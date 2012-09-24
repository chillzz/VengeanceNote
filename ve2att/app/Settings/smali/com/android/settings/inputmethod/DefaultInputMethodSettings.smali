.class public Lcom/android/settings/inputmethod/DefaultInputMethodSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DefaultInputMethodSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private pQ:Ljava/util/List;

.field private pR:Landroid/preference/PreferenceScreen;

.field private pS:Landroid/view/MenuItem;

.field private pT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private eb()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pR:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pR:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 79
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.inputmethod.latin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.voicesearch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pR:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pS:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->addPreferencesFromResource(I)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->setHasOptionsMenu(Z)V

    .line 37
    const-string v0, "default_input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pR:Landroid/preference/PreferenceScreen;

    .line 38
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 39
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pQ:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->eb()V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x1

    const v1, 0x104000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pS:Landroid/view/MenuItem;

    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pS:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pS:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method_choosed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method_choosed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    iget-object v3, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pT:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    invoke-static {p0, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->finish()V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->pT:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/android/settings/inputmethod/DefaultInputMethodSettings;->eb()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
