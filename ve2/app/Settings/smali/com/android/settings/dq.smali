.class Lcom/android/settings/dq;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aY:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/settings/dq;->aY:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/settings/dq;->aY:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dq;->aY:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/settings/dq;->aY:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->H(Lcom/android/settings/RadioInfo;)V

    .line 975
    return-void

    .line 973
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
