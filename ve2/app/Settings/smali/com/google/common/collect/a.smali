.class public final Lcom/google/common/collect/a;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final cC:Lcom/google/common/base/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/m;->ak(Ljava/lang/String;)Lcom/google/common/base/m;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/a;->cC:Lcom/google/common/base/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 318
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/a;->e(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/google/common/collect/a;->cC:Lcom/google/common/base/m;

    new-instance v2, Lcom/google/common/collect/ak;

    invoke-direct {v2, p0}, Lcom/google/common/collect/ak;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, Lcom/google/common/collect/S;->a(Ljava/lang/Iterable;Lcom/google/common/base/l;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/m;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {p0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 307
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static e(I)Ljava/lang/StringBuilder;
    .locals 5
    .parameter

    .prologue
    .line 333
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/c;->a(ZLjava/lang/Object;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
