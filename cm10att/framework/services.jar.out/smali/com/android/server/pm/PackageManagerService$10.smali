.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$mediaStatus:Z

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9001
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9003
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$mediaStatus:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$reportStatus:Z

    #calls: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInner(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;ZZ)V

    .line 9004
    return-void
.end method
