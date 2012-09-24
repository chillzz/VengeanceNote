.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private qF:I

.field private qG:Landroid/app/Fragment;

.field private qH:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/l;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 177
    iput p2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qF:I

    .line 178
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    .line 183
    return-void
.end method


# virtual methods
.method public en()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qF:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 196
    if-eqz p1, :cond_1

    .line 197
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qF:I

    .line 198
    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 199
    if-le v0, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    .line 201
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/l;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_parent_fragment_id must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->a(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/l;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qF:I

    invoke-interface {v0, v1}, Lcom/android/settings/l;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->a(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->a(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 247
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qH:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qH:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qF:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->qG:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    :cond_0
    return-void
.end method
