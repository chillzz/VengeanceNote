.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableEnabler.java"


# instance fields
.field final synthetic OL:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->OL:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x8000

    .line 74
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    if-eq v0, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->OL:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->aB(I)V

    .line 81
    :cond_0
    return-void
.end method