.class Lcom/android/settings/dE;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FG:Lcom/android/settings/CryptKeeper;

.field final synthetic Kt:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/settings/dE;->FG:Lcom/android/settings/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings/dE;->Kt:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/settings/dE;->Kt:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 536
    return-void
.end method