.class Lcom/android/settings/bI;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic yv:Lcom/android/settings/AccessControlSetApp;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/bI;->yv:Lcom/android/settings/AccessControlSetApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bI;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v2, p0, Lcom/android/settings/bI;->sCollator:Ljava/text/Collator;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/bI;->yv:Lcom/android/settings/AccessControlSetApp;

    invoke-static {v1}, Lcom/android/settings/AccessControlSetApp;->a(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/bI;->yv:Lcom/android/settings/AccessControlSetApp;

    invoke-static {v3}, Lcom/android/settings/AccessControlSetApp;->a(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bI;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method