.class Lcom/android/settings/cC;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Gf:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/cC;->Gf:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/cC;->Gf:Lcom/android/settings/CryptKeeperSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeperSettings;->a(Lcom/android/settings/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/cC;->Gf:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    :cond_0
    return-void
.end method