.class final Lcom/google/common/collect/p;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field final referent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1818
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    iput-object p1, p0, Lcom/google/common/collect/p;->referent:Ljava/lang/Object;

    .line 1820
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1834
    return-object p0
.end method

.method public a(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 1848
    return-void
.end method

.method public cY()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1829
    const/4 v0, 0x0

    return-object v0
.end method

.method public cZ()Z
    .locals 1

    .prologue
    .line 1839
    const/4 v0, 0x0

    return v0
.end method

.method public da()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/common/collect/p;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/common/collect/p;->referent:Ljava/lang/Object;

    return-object v0
.end method
