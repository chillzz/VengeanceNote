.class final Lcom/android/settings/applications/ApplicationsState$3;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$3;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 193
    iget-wide v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    iget-wide v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    iget-wide v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    check-cast p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState$3;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method