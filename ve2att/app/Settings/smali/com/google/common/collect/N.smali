.class final Lcom/google/common/collect/N;
.super Lcom/google/common/collect/ax;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field om:Lcom/google/common/collect/ag;

.field on:Lcom/google/common/collect/ag;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ax;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1584
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/N;->time:J

    .line 1596
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/N;->om:Lcom/google/common/collect/ag;

    .line 1609
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/N;->on:Lcom/google/common/collect/ag;

    .line 1580
    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/google/common/collect/N;->om:Lcom/google/common/collect/ag;

    .line 1607
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/google/common/collect/N;->on:Lcom/google/common/collect/ag;

    .line 1620
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1588
    iget-wide v0, p0, Lcom/google/common/collect/N;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/common/collect/N;->om:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/common/collect/N;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1593
    iput-wide p1, p0, Lcom/google/common/collect/N;->time:J

    .line 1594
    return-void
.end method