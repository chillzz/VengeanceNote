.class Lcom/android/settings/cF;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic Gh:Lcom/android/settings/Display;


# direct methods
.method constructor <init>(Lcom/android/settings/Display;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/cF;->Gh:Lcom/android/settings/Display;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/cF;->Gh:Lcom/android/settings/Display;

    invoke-static {v0}, Lcom/android/settings/Display;->a(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f40

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cF;->Gh:Lcom/android/settings/Display;

    invoke-static {v0}, Lcom/android/settings/Display;->b(Lcom/android/settings/Display;)V

    .line 127
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/cF;->Gh:Lcom/android/settings/Display;

    invoke-static {v0}, Lcom/android/settings/Display;->a(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3fa0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cF;->Gh:Lcom/android/settings/Display;

    invoke-static {v0}, Lcom/android/settings/Display;->a(Lcom/android/settings/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method