.class Lcom/android/internal/policy/impl/MiuiGlobalActions$2;
.super Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 184
    const/4 v0, 0x2

    .line 191
    .local v0, ringerMode:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/util/AudioManagerHelper;->setRingerMode(Landroid/content/Context;I)V

    .line 192
    return-void

    .line 185
    .end local v0           #ringerMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 187
    const/4 v0, 0x1

    .restart local v0       #ringerMode:I
    goto :goto_0

    .line 189
    .end local v0           #ringerMode:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #ringerMode:I
    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method
