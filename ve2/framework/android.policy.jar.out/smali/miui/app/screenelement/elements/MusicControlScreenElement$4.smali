.class Lmiui/app/screenelement/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/elements/MusicControlScreenElement;->onButtonUp(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

.field final synthetic val$_name:Ljava/lang/String;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iput-object p2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    iput p3, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$keyCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 412
    const-string v0, "music_pause"

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 414
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1000(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 415
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1102(Lmiui/app/screenelement/elements/MusicControlScreenElement;I)I

    .line 416
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 419
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1300(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1300(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void

    .line 420
    :cond_2
    const-string v0, "music_play"

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1000(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 422
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ButtonScreenElement;->show(Z)V

    .line 423
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/4 v1, 0x2

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1102(Lmiui/app/screenelement/elements/MusicControlScreenElement;I)I

    .line 424
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$1200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 427
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 429
    const/16 v0, 0x55

    iget v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->val$keyCode:I

    if-ne v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$4;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    goto/16 :goto_0
.end method