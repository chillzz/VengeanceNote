.class Lcom/android/settings/bw;
.super Landroid/content/BroadcastReceiver;
.source "DockSettings.java"


# instance fields
.field final synthetic vx:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/bw;->vx:Lcom/android/settings/DockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/bw;->vx:Lcom/android/settings/DockSettings;

    invoke-static {v0, p2}, Lcom/android/settings/DockSettings;->a(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V

    .line 52
    :cond_0
    return-void
.end method
