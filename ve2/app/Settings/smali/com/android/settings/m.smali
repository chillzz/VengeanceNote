.class Lcom/android/settings/m;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic aV:Landroid/os/Handler;

.field final synthetic aW:Ljava/lang/Runnable;

.field final synthetic aX:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings/m;->aX:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/m;->aV:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/m;->aW:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings/m;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->x(Lcom/android/settings/RadioInfo;)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/m;->aV:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/m;->aW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void
.end method
