.class Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic GI:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

.field final synthetic GJ:Landroid/preference/CheckBoxPreference;

.field final synthetic GK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GI:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GJ:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GK:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GI:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GI:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->a(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->GK:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 171
    return-void
.end method