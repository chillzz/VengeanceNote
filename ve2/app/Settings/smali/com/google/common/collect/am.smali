.class final Lcom/google/common/collect/am;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# instance fields
.field final EI:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3156
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3157
    new-instance v0, Lcom/google/common/collect/E;

    invoke-direct {v0, p0}, Lcom/google/common/collect/E;-><init>(Lcom/google/common/collect/am;)V

    iput-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3251
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-eq v0, v1, :cond_0

    .line 3252
    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v1

    .line 3253
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->k(Lcom/google/common/collect/ag;)V

    move-object v0, v1

    .line 3255
    goto :goto_0

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0, v1}, Lcom/google/common/collect/ag;->a(Lcom/google/common/collect/ag;)V

    .line 3258
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0, v1}, Lcom/google/common/collect/ag;->b(Lcom/google/common/collect/ag;)V

    .line 3259
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3230
    check-cast p1, Lcom/google/common/collect/ag;

    .line 3231
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yA:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iX()Lcom/google/common/collect/ag;
    .locals 2

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3201
    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public iY()Lcom/google/common/collect/ag;
    .locals 2

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3207
    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    .line 3208
    const/4 v0, 0x0

    .line 3212
    :goto_0
    return-object v0

    .line 3211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/am;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3263
    new-instance v0, Lcom/google/common/collect/D;

    invoke-virtual {p0}, Lcom/google/common/collect/am;->iX()Lcom/google/common/collect/ag;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/am;Lcom/google/common/collect/ag;)V

    return-object v0
.end method

.method public l(Lcom/google/common/collect/ag;)Z
    .locals 2
    .parameter

    .prologue
    .line 3189
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ac()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3192
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ac()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3193
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3195
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 3156
    check-cast p1, Lcom/google/common/collect/ag;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/am;->l(Lcom/google/common/collect/ag;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3156
    invoke-virtual {p0}, Lcom/google/common/collect/am;->iX()Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3156
    invoke-virtual {p0}, Lcom/google/common/collect/am;->iY()Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3218
    check-cast p1, Lcom/google/common/collect/ag;

    .line 3219
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ac()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3220
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v1

    .line 3221
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3222
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->k(Lcom/google/common/collect/ag;)V

    .line 3224
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yA:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3241
    const/4 v1, 0x0

    .line 3242
    iget-object v0, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-eq v0, v2, :cond_0

    .line 3243
    add-int/lit8 v1, v1, 0x1

    .line 3242
    invoke-interface {v0}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_0

    .line 3245
    :cond_0
    return v1
.end method
