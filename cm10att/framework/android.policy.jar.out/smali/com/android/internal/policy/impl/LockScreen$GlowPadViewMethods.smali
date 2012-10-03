.class Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadViewMethods"
.end annotation


# instance fields
.field private final mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIsScreenLarge:Z

.field private mStoredTargets:[Ljava/lang/String;

.field private mTargetOffset:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter
    .parameter "glowPadView"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 281
    return-void
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 13
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 293
    .local v10, res:Landroid/content/res/Resources;
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 294
    .local v9, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 295
    .local v7, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const v1, 0x1080311

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 296
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 297
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 298
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p4, :cond_0

    const v1, 0x106000d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 299
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 300
    .local v11, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 301
    .local v8, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 302
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 303
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 304
    .local v6, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 305
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 306
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v11, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 307
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 308
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 309
    return-object v11

    .end local v6           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object v1, p2

    .line 298
    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 508
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    :goto_1
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockScreen"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 555
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method public isScreenLarge()Z
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 286
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 288
    .local v0, isScreenLarge:Z
    :goto_0
    return v0

    .line 286
    .end local v0           #isScreenLarge:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 451
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 528
    if-eqz p2, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 531
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 455
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 458
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 459
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v2

    .line 460
    .local v2, resId:I
    sparse-switch v2, :sswitch_data_0

    .line 505
    .end local v2           #resId:I
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local v2       #resId:I
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 463
    .local v0, assistIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 468
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 466
    :cond_1
    const-string v4, "LockScreen"

    const-string v5, "Failed to get intent for assist activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 472
    .end local v0           #assistIntent:Landroid/content/Intent;
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 473
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 477
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 478
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 483
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 487
    .end local v2           #resId:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 488
    .local v1, isLand:Z
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    if-ne p2, v5, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    .line 489
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 491
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr p2, v4

    .line 492
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v4, v4

    if-ge p2, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v4, v4, p2

    if-eqz v4, :cond_0

    .line 494
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 495
    .local v3, tIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 497
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 499
    .end local v3           #tIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 500
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x1080294 -> :sswitch_0
        0x10802ea -> :sswitch_1
        0x1080324 -> :sswitch_2
        0x1080331 -> :sswitch_3
        0x1080334 -> :sswitch_3
    .end sparse-switch
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 543
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 539
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 547
    return-void
.end method

.method public updateResources()V
    .locals 36

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_targets"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 319
    .local v32, storedVal:Ljava/lang/String;
    if-nez v32, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v30, 0x1070009

    .line 328
    .local v30, resId:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v4

    move/from16 v0, v30

    if-eq v4, v0, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 332
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v19

    .line 334
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_1

    .line 338
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 339
    .local v10, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v5, "com.android.systemui.action_assist_icon_google"

    const v6, 0x1080294

    invoke-virtual {v4, v10, v5, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v28

    .line 343
    .local v28, replaced:Z
    if-nez v28, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v5, "com.android.systemui.action_assist_icon"

    const v6, 0x1080294

    invoke-virtual {v4, v10, v5, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 346
    const-string v4, "LockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t grab icon from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v10           #component:Landroid/content/ComponentName;
    .end local v19           #intent:Landroid/content/Intent;
    .end local v28           #replaced:Z
    :cond_1
    const v5, 0x10802ea

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 351
    const v5, 0x1080294

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 447
    .end local v30           #resId:I
    :goto_3
    return-void

    .line 323
    :cond_2
    const v30, 0x107000c

    goto/16 :goto_0

    .line 326
    :cond_3
    const v30, 0x107000e

    .restart local v30       #resId:I
    goto/16 :goto_0

    .line 350
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 351
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 353
    .end local v30           #resId:I
    :cond_6
    const-string v4, "\\|"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->isScreenLarge()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    .line 355
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v31, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 357
    .local v29, res:Landroid/content/res/Resources;
    const v4, 0x1050055

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    .line 358
    .local v33, targetInset:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 359
    .local v24, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    const/16 v21, 0x1

    .line 360
    .local v21, isLandscape:Z
    :goto_4
    const v4, 0x108032e

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 361
    .local v3, blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 363
    .local v2, activeBack:Landroid/graphics/drawable/InsetDrawable;
    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v4, :cond_d

    const/4 v4, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    .line 364
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 365
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_7
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v5, 0x1080331

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    rsub-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-ge v0, v4, :cond_16

    .line 371
    move/from16 v34, v33

    .line 372
    .local v34, tmpInset:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_15

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v35, v4, v16

    .line 374
    .local v35, uri:Ljava/lang/String;
    const-string v4, "empty"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 376
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 377
    .local v18, in:Landroid/content/Intent;
    const/4 v14, 0x0

    .line 378
    .local v14, front:Landroid/graphics/drawable/Drawable;
    move-object v9, v2

    .line 379
    .local v9, back:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 380
    .local v15, frontBlank:Z
    const-string v4, "icon_file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 381
    const-string v4, "icon_file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 382
    .local v13, fSource:Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 383
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v12, fPath:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 385
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14           #front:Landroid/graphics/drawable/Drawable;
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v14, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 416
    .end local v12           #fPath:Ljava/io/File;
    .end local v13           #fSource:Ljava/lang/String;
    .restart local v14       #front:Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_7
    if-eqz v14, :cond_9

    if-nez v9, :cond_a

    .line 417
    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 418
    .local v8, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_10

    .line 419
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 424
    .end local v8           #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    :goto_8
    new-instance v23, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v9, v14, v1, v15}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 425
    .local v23, nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.camera.CameraLauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 426
    .local v20, isCamera:Z
    if-eqz v20, :cond_12

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 434
    :cond_b
    :goto_a
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v14           #front:Landroid/graphics/drawable/Drawable;
    .end local v15           #frontBlank:Z
    .end local v18           #in:Landroid/content/Intent;
    .end local v20           #isCamera:Z
    .end local v23           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v35           #uri:Ljava/lang/String;
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 359
    .end local v2           #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .end local v3           #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .end local v16           #i:I
    .end local v21           #isLandscape:Z
    .end local v34           #tmpInset:I
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 363
    .restart local v2       #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .restart local v3       #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v21       #isLandscape:Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 388
    .restart local v9       #back:Landroid/graphics/drawable/Drawable;
    .restart local v14       #front:Landroid/graphics/drawable/Drawable;
    .restart local v15       #frontBlank:Z
    .restart local v16       #i:I
    .restart local v18       #in:Landroid/content/Intent;
    .restart local v34       #tmpInset:I
    .restart local v35       #uri:Ljava/lang/String;
    :cond_e
    const-string v4, "icon_resource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 389
    const-string v4, "icon_resource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 390
    .local v27, rSource:Ljava/lang/String;
    const-string v4, "icon_package"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 391
    .local v26, rPackage:Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 392
    if-eqz v26, :cond_f

    .line 394
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v25

    .line 395
    .local v25, rContext:Landroid/content/Context;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 396
    .local v17, id:I
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 397
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "_normal"

    const-string v6, "_activated"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 399
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 400
    const/16 v34, 0x0

    .line 401
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 402
    .end local v17           #id:I
    .end local v25           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v11

    .line 403
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 435
    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #front:Landroid/graphics/drawable/Drawable;
    .end local v15           #frontBlank:Z
    .end local v18           #in:Landroid/content/Intent;
    .end local v26           #rPackage:Ljava/lang/String;
    .end local v27           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 436
    .local v11, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 404
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v9       #back:Landroid/graphics/drawable/Drawable;
    .restart local v14       #front:Landroid/graphics/drawable/Drawable;
    .restart local v15       #frontBlank:Z
    .restart local v18       #in:Landroid/content/Intent;
    .restart local v26       #rPackage:Ljava/lang/String;
    .restart local v27       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 405
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v11}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .line 408
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_f
    const-string v4, "drawable"

    const-string v5, "android"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 409
    const-string v4, "_normal"

    const-string v5, "_activated"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "android"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 411
    const/16 v34, 0x0

    .line 412
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 421
    .end local v26           #rPackage:Ljava/lang/String;
    .end local v27           #rSource:Ljava/lang/String;
    .restart local v8       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_10
    const v4, 0x1080093

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_8

    .line 427
    .end local v8           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v20       #isCamera:Z
    .restart local v23       #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 429
    :cond_12
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SearchActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 430
    .local v22, isSearch:Z
    if-eqz v22, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_a

    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 439
    .end local v9           #back:Landroid/graphics/drawable/Drawable;
    .end local v14           #front:Landroid/graphics/drawable/Drawable;
    .end local v15           #frontBlank:Z
    .end local v18           #in:Landroid/content/Intent;
    .end local v20           #isCamera:Z
    .end local v22           #isSearch:Z
    .end local v23           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_14
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 442
    .end local v35           #uri:Ljava/lang/String;
    :cond_15
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 445
    .end local v34           #tmpInset:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method