.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 232
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 233
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;->dq:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 239
    return-void
.end method