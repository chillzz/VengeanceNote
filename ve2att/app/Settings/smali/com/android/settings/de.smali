.class Lcom/android/settings/de;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eG:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/de;->eG:Lcom/android/settings/VirusScanActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/de;->eG:Lcom/android/settings/VirusScanActivity;

    const-class v2, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/android/settings/de;->eG:Lcom/android/settings/VirusScanActivity;

    invoke-virtual {v1, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
