.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# instance fields
.field HW:Z

.field HX:I

.field HY:Lcom/google/common/collect/MapMaker$RemovalCause;

.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field keyEquivalence:Lcom/google/common/base/Equivalence;

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field ticker:Lcom/google/common/base/b;

.field valueEquivalence:Lcom/google/common/base/Equivalence;

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 144
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 123
    iput v0, p0, Lcom/google/common/collect/MapMaker;->HX:I

    .line 124
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 125
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 130
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 131
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 144
    return-void
.end method

.method private b(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return-void

    :cond_0
    move v0, v2

    .line 476
    goto :goto_0

    :cond_1
    move v0, v2

    .line 478
    goto :goto_1

    :cond_2
    move v0, v2

    .line 480
    goto :goto_2
.end method

.method private jY()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/common/collect/o;)Lcom/google/common/collect/GenericMapMaker;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 563
    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/o;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/c;->B(Z)V

    .line 568
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/o;

    iput-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/o;

    .line 569
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 570
    return-object p0

    .line 563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 466
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 467
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 472
    return-object p0
.end method

.method a(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 162
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 163
    return-object p0

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 339
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->dl:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 341
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 343
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 337
    goto :goto_0
.end method

.method public a(Lcom/google/common/base/l;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/google/common/collect/MapMaker;->jY()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V

    goto :goto_0
.end method

.method public aK(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget v0, p0, Lcom/google/common/collect/MapMaker;->HX:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->HX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    if-ltz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/c;->A(Z)V

    .line 206
    iput p1, p0, Lcom/google/common/collect/MapMaker;->HX:I

    .line 207
    return-object p0

    :cond_0
    move v0, v2

    .line 203
    goto :goto_0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_1
.end method

.method aL(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 238
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    if-ltz p1, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lcom/google/common/base/c;->a(ZLjava/lang/Object;)V

    .line 241
    iput p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 242
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 243
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-nez v0, :cond_1

    .line 245
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 247
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 238
    goto :goto_0
.end method

.method public aM(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/c;->A(Z)V

    .line 274
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 275
    return-object p0

    :cond_0
    move v0, v2

    .line 271
    goto :goto_0

    :cond_1
    move v1, v2

    .line 273
    goto :goto_1
.end method

.method b(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 183
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 184
    return-object p0

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/c;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 412
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->dl:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 414
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 416
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 410
    goto :goto_0
.end method

.method c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 516
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 518
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 520
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    .line 521
    return-object p0
.end method

.method jZ()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->ke()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->S()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method ka()Lcom/google/common/base/Equivalence;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->kf()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->S()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method kb()I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/common/collect/MapMaker;->HX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->HX:I

    goto :goto_0
.end method

.method kc()I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method public kd()Lcom/google/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->dn:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method ke()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->dl:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method kf()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->dl:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method kg()J
    .locals 4

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method kh()J
    .locals 4

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method ki()Lcom/google/common/base/b;
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/b;

    invoke-static {}, Lcom/google/common/base/b;->dy()Lcom/google/common/base/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    return-object v0
.end method

.method public kj()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->HW:Z

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->kb()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->kc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->HY:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 679
    invoke-static {p0}, Lcom/google/common/base/g;->m(Ljava/lang/Object;)Lcom/google/common/base/o;

    move-result-object v0

    .line 680
    iget v1, p0, Lcom/google/common/collect/MapMaker;->HX:I

    if-eq v1, v3, :cond_0

    .line 681
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->HX:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->c(Ljava/lang/String;I)Lcom/google/common/base/o;

    .line 683
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 684
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->c(Ljava/lang/String;I)Lcom/google/common/base/o;

    .line 686
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 687
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->c(Ljava/lang/String;I)Lcom/google/common/base/o;

    .line 689
    :cond_2
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 690
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 692
    :cond_3
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 693
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 695
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 696
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/h;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 698
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 699
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/h;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/o;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 701
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 702
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/o;->r(Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 704
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 705
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/o;->r(Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 707
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/o;

    if-eqz v1, :cond_9

    .line 708
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/o;->r(Ljava/lang/Object;)Lcom/google/common/base/o;

    .line 710
    :cond_9
    invoke-virtual {v0}, Lcom/google/common/base/o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
