.class public Lcom/android/settings/widget/n;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings/widget/b;


# instance fields
.field private final CY:Lcom/android/settings/widget/b;

.field private eY:F


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/b;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    .line 31
    return-void
.end method


# virtual methods
.method public X()[F
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v0}, Lcom/android/settings/widget/b;->X()[F

    move-result-object v1

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    iget v2, p0, Lcom/android/settings/widget/n;->eY:F

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public a(J)F
    .locals 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/widget/n;->eY:F

    iget-object v1, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/widget/b;->a(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/b;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/widget/n;->eY:F

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/b;->a(F)Z

    move-result v0

    return v0
.end method

.method public a(JJ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/b;->a(JJ)Z

    move-result v0

    return v0
.end method

.method public b(J)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/widget/b;->b(J)I

    move-result v0

    return v0
.end method

.method public b(F)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/n;->CY:Lcom/android/settings/widget/b;

    iget v1, p0, Lcom/android/settings/widget/n;->eY:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v0

    return-wide v0
.end method