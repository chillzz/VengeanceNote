.class Lcom/android/settings/L;
.super Ljava/lang/Object;
.source "ConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cS:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/L;->cS:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/settings/L;->cS:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method