.class Lcom/android/settings/C;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic cT:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/C;->cT:Lcom/android/settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/C;->cT:Lcom/android/settings/TetherSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 205
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/C;->cT:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 208
    return-void
.end method