.class Lcom/android/settings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mR:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

.field final synthetic mS:Lcom/android/settings/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->mS:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->mR:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->mS:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->mR:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    .line 135
    return-void
.end method
