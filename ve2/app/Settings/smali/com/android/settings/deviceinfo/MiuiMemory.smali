.class public Lcom/android/settings/deviceinfo/MiuiMemory;
.super Lcom/android/settings/deviceinfo/Memory;
.source "MiuiMemory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private os:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x609

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "usb_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    .line 42
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b02d5

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 84
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/MiuiMemory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v0, "usb_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings/deviceinfo/Memory;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiMemory;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method