.class Lcom/android/settings/cH;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# instance fields
.field final synthetic Ct:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/cH;->Ct:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/cH;->Ct:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->b(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/cH;->Ct:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->c(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void
.end method