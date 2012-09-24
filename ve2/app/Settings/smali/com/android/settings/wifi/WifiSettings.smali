.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected final HM:Ljava/lang/String;

.field private final HN:Landroid/content/IntentFilter;

.field private final HO:Lcom/android/settings/wifi/B;

.field private HP:Lcom/android/settings/wifi/A;

.field private HQ:Lcom/android/settings/wifi/AccessPoint;

.field protected HR:Landroid/net/NetworkInfo$DetailedState;

.field protected HS:Landroid/net/wifi/WifiInfo;

.field private HT:I

.field private HU:Lcom/android/settings/wifi/s;

.field private HV:Z

.field protected HW:Z

.field private HX:Z

.field private HY:Lcom/android/settings/wifi/AccessPoint;

.field private HZ:Landroid/os/Bundle;

.field protected c:Landroid/net/wifi/WifiManager;

.field private ip:Landroid/widget/TextView;

.field private lh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    const-string v0, "nearby_wifi"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HM:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->lh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->HT:I

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/android/settings/wifi/v;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/v;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/android/settings/wifi/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/v;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    .line 169
    return-void
.end method

.method private a(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->b(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private aJ(I)V
    .locals 1
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->ip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->ip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 499
    return-void
.end method

.method private aK(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 661
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    .line 662
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 664
    :goto_1
    return-void

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    goto :goto_1

    .line 653
    :pswitch_1
    const v0, 0x7f0b01b4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aJ(I)V

    goto :goto_0

    .line 657
    :pswitch_2
    const v0, 0x7f0b01c6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aJ(I)V

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ab(Z)V
    .locals 1
    .parameter

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ab(Z)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private b(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 624
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    .line 625
    if-eqz p1, :cond_2

    .line 626
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    .line 629
    :cond_2
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 630
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_5

    .line 632
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 633
    instance-of v3, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    .line 634
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 635
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 630
    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    goto :goto_1

    .line 639
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private b(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    .line 427
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->HY:Lcom/android/settings/wifi/AccessPoint;

    .line 428
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->HX:Z

    .line 430
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 431
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 567
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aK(I)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    goto :goto_0

    .line 575
    :cond_3
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->lh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 583
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    .line 587
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->h(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 591
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->lh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 594
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->ab(Z)V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    .line 596
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 597
    :cond_6
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 599
    :cond_7
    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 601
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 603
    :pswitch_0
    const v0, 0x7f0b01fc

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter

    .prologue
    .line 450
    invoke-static {p1}, Lcom/android/settings/wifi/N;->f(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 452
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->HT:I

    .line 453
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->d(Landroid/net/wifi/WifiConfiguration;)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/android/settings/wifi/N;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 776
    invoke-virtual {p1}, Lcom/android/settings/wifi/N;->iE()I

    move-result v0

    .line 777
    packed-switch v0, :pswitch_data_0

    .line 806
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    .line 810
    return-void

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/N;->iF()Landroid/net/wifi/WpsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    .line 784
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 786
    if-nez v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->f(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_0

    .line 792
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 793
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 794
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/N;->jf()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->f(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 798
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 800
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected iM()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 467
    packed-switch v0, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 470
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iN()Ljava/util/List;

    move-result-object v1

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 472
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->a(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 483
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 487
    :pswitch_2
    const v0, 0x7f0b01b5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aJ(I)V

    goto :goto_0

    .line 491
    :pswitch_3
    const v0, 0x7f0b01c6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aJ(I)V

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected iN()Ljava/util/List;
    .locals 7

    .prologue
    .line 504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 507
    new-instance v4, Lcom/android/settings/wifi/l;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 512
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 514
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_3

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 523
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const/4 v1, 0x0

    .line 529
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/l;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 530
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 533
    :cond_2
    if-nez v2, :cond_1

    .line 534
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 535
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 542
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 543
    return-object v3

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method iO()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 823
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    .line 829
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->ab(Z)V

    .line 830
    return-void
.end method

.method iP()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    .line 841
    :cond_0
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 842
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 843
    return-void
.end method

.method iQ()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 850
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    .line 851
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 852
    return-void
.end method

.method iR()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 857
    if-eqz v0, :cond_0

    .line 858
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 859
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 861
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method iS()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 872
    :cond_0
    return-void
.end method

.method iT()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    .line 881
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 185
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/C;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/C;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 187
    if-eqz p1, :cond_0

    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HX:Z

    .line 190
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    const-string v2, "wifi_enable_next_on_connect"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HV:Z

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HV:Z

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->ab(Z)V

    .line 212
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_2

    .line 213
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->ip:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->ip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 242
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    return-void

    .line 215
    :cond_2
    const v0, 0x7f05005e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 217
    new-instance v2, Lmiui/widget/SlidingButton;

    invoke-direct {v2, v1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 219
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 220
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 221
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_4

    .line 222
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 224
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 228
    iput v0, v3, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 229
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 231
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 235
    :cond_4
    new-instance v0, Lcom/android/settings/wifi/A;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/A;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HP:Lcom/android/settings/wifi/A;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 175
    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    .line 176
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x3

    .line 759
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_2

    .line 760
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iO()V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    if-ne p2, v2, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ig()V

    goto :goto_0

    .line 766
    :cond_2
    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iO()V

    goto :goto_0

    .line 768
    :cond_3
    if-ne p2, v2, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    invoke-virtual {v0}, Lcom/android/settings/wifi/s;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/N;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 360
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 361
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 387
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->f(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-nez v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dg()V

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 337
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 343
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 344
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->df()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 348
    const/4 v0, 0x4

    const v1, 0x7f0b01c3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 351
    const/4 v0, 0x5

    const v1, 0x7f0b01c4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 352
    const/4 v0, 0x6

    const v1, 0x7f0b01c5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HY:Lcom/android/settings/wifi/AccessPoint;

    .line 436
    if-nez v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 440
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HY:Lcom/android/settings/wifi/AccessPoint;

    .line 444
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    .line 445
    new-instance v1, Lcom/android/settings/wifi/s;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->HX:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/wifi/s;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 281
    const v1, 0x7f0b01c1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    const/4 v1, 0x2

    const v2, 0x7f0b01bf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 290
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->hw()V

    :cond_0
    move v0, v7

    .line 314
    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iQ()V

    :cond_1
    move v0, v7

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01fd

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 330
    goto :goto_0

    .line 328
    :cond_2
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HP:Lcom/android/settings/wifi/A;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HP:Lcom/android/settings/wifi/A;

    invoke-virtual {v0}, Lcom/android/settings/wifi/A;->pause()V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HO:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 273
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 392
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 393
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dg()V

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 405
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HQ:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 250
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HP:Lcom/android/settings/wifi/A;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HP:Lcom/android/settings/wifi/A;

    invoke-virtual {v0}, Lcom/android/settings/wifi/A;->resume()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HN:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->HT:I

    if-eq v0, v3, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->HT:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 260
    :cond_1
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->HT:I

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    .line 263
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HU:Lcom/android/settings/wifi/s;

    invoke-virtual {v0}, Lcom/android/settings/wifi/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->HX:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HY:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HY:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->HZ:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    :cond_0
    return-void
.end method
