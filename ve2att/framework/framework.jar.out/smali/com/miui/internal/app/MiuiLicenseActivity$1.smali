.class Lcom/miui/internal/app/MiuiLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MiuiLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/MiuiLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/MiuiLicenseActivity;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$100(Lcom/miui/internal/app/MiuiLicenseActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #calls: Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$300(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$400(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
