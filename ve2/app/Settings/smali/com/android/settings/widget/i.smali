.class Lcom/android/settings/widget/i;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic tS:Z

.field final synthetic tT:Z

.field final synthetic tU:Lcom/android/settings/widget/g;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/g;ZZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/settings/widget/i;->tU:Lcom/android/settings/widget/g;

    iput-boolean p2, p0, Lcom/android/settings/widget/i;->tS:Z

    iput-boolean p3, p0, Lcom/android/settings/widget/i;->tT:Z

    iput-object p4, p0, Lcom/android/settings/widget/i;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/settings/widget/i;->tU:Lcom/android/settings/widget/g;

    iget-object v2, p0, Lcom/android/settings/widget/i;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/g;->a(Landroid/content/Context;I)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/widget/i;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->x(Landroid/content/Context;)V

    .line 584
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    iget-boolean v0, p0, Lcom/android/settings/widget/i;->tS:Z

    if-eqz v0, :cond_1

    .line 565
    iget-boolean v0, p0, Lcom/android/settings/widget/i;->tT:Z

    if-nez v0, :cond_0

    .line 566
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 568
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 572
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/i;->tT:Z

    if-eqz v0, :cond_2

    .line 573
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 575
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 560
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/i;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method
