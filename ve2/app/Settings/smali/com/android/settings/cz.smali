.class Lcom/android/settings/cz;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic FG:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/cz;->FG:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/dI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/cz;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 203
    iget-object v0, p0, Lcom/android/settings/cz;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;Z)Z

    .line 204
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/settings/cz;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;Z)Z

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cz;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->d(Lcom/android/settings/CryptKeeper;)V

    .line 211
    return-void

    .line 208
    :cond_0
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/android/settings/cz;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 188
    :try_start_0
    const-string v2, "CryptKeeper"

    const-string v3, "Validating encryption state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v0

    .line 190
    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "CryptKeeper"

    const-string v2, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v0, "CryptKeeper"

    const-string v2, "Unable to get encryption state properly"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cz;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/cz;->a(Ljava/lang/Boolean;)V

    return-void
.end method
