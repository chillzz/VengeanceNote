.class Lcom/android/settings/bQ;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# instance fields
.field final synthetic AG:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/bQ;->AG:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 107
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/bQ;->AG:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/bQ;->AG:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    :goto_2
    invoke-static {v3, v1}, Lcom/android/settings/IccLockSettings;->b(Lcom/android/settings/IccLockSettings;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bQ;->AG:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
