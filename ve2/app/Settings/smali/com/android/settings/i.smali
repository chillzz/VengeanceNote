.class Lcom/android/settings/i;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aO:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/i;->aO:Lcom/android/settings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/i;->aO:Lcom/android/settings/MediaFormat;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/MediaFormat;->a(Lcom/android/settings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/i;->aO:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->a(Lcom/android/settings/MediaFormat;)V

    .line 114
    :cond_0
    return-void
.end method