.class public Landroid/content/res/MiuiClassFactory;
.super Ljava/lang/Object;
.source "MiuiClassFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 14
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 19
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0
.end method

.method static newTypedArray(Landroid/content/res/Resources;[I[II)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "resources"
    .parameter "data"
    .parameter "indices"
    .parameter "len"

    .prologue
    .line 27
    new-instance v0, Landroid/content/res/MiuiTypedArray;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    return-object v0
.end method
