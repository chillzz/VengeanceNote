.class Lcom/android/settings/wifi/T;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic Mq:Lcom/android/settings/wifi/o;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/o;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/T;->Mq:Lcom/android/settings/wifi/o;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/T;->Mq:Lcom/android/settings/wifi/o;

    invoke-virtual {v0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 87
    return-void
.end method