.class final Lcom/android/settings/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final nV:[Landroid/os/ParcelUuid;


# instance fields
.field private final N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private nT:Landroid/bluetooth/BluetoothHeadset;

.field private nU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/HeadsetProfile;->nV:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 96
    iput-object p3, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 97
    iput-object p4, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings/bluetooth/HeadsetProfile;Lcom/android/settings/bluetooth/HeadsetProfile$1;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nU:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter

    .prologue
    .line 192
    const v0, 0x7f020057

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x64

    .line 152
    if-eqz p2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 114
    iget-object v2, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v3, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 174
    const v0, 0x7f0b018a

    return v0
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nT:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 179
    packed-switch v0, :pswitch_data_0

    .line 187
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->al(I)I

    move-result v0

    :goto_0
    return v0

    .line 181
    :pswitch_1
    const v0, 0x7f0b01a2

    goto :goto_0

    .line 184
    :pswitch_2
    const v0, 0x7f0b019b

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->nU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "HEADSET"

    return-object v0
.end method