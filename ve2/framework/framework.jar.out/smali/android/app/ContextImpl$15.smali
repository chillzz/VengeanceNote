.class final Landroid/app/ContextImpl$15;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 333
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    return-object v0
.end method
