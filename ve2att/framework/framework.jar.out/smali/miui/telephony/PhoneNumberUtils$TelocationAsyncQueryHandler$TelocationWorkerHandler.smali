.class public Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TelocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 722
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;->this$0:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    .line 723
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 724
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 728
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 729
    .local v0, args:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 730
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 732
    :cond_0
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 733
    .local v1, reply:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 734
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 736
    return-void
.end method
