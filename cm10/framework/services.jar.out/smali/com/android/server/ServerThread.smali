.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 85
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 951
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 952
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 954
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 956
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 81
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    return-void
.end method

.method public run()V
    .locals 124

    .prologue
    .line 100
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 103
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 105
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 108
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 109
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 113
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    .line 115
    .local v103, shutdownAction:Ljava/lang/String;
    if-eqz v103, :cond_0

    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 116
    const/4 v3, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_d

    const/16 v95, 0x1

    .line 119
    .local v95, reboot:Z
    :goto_0
    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_e

    .line 120
    const/4 v3, 0x1

    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v103

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v94

    .line 125
    .local v94, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v95

    move-object/from16 v1, v94

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 129
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 130
    .local v67, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v66, 0x0

    .line 132
    .local v66, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 134
    .local v16, headless:Z
    const/16 v74, 0x0

    .line 135
    .local v74, lights:Lcom/android/server/LightsService;
    const/16 v91, 0x0

    .line 136
    .local v91, power:Lcom/android/server/PowerManagerService;
    const/16 v45, 0x0

    .line 137
    .local v45, battery:Lcom/android/server/BatteryService;
    const/16 v114, 0x0

    .line 138
    .local v114, vibrator:Lcom/android/server/VibratorService;
    const/16 v42, 0x0

    .line 139
    .local v42, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 140
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 141
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v83, 0x0

    .line 142
    .local v83, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v54, 0x0

    .line 143
    .local v54, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v121, 0x0

    .line 144
    .local v121, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v119, 0x0

    .line 145
    .local v119, wifi:Lcom/android/server/WifiService;
    const/16 v102, 0x0

    .line 146
    .local v102, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v90, 0x0

    .line 147
    .local v90, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 148
    .local v4, context:Landroid/content/Context;
    const/16 v123, 0x0

    .line 149
    .local v123, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v46, 0x0

    .line 150
    .local v46, bluetooth:Landroid/server/BluetoothService;
    const/16 v48, 0x0

    .line 151
    .local v48, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v61, 0x0

    .line 152
    .local v61, dock:Lcom/android/server/DockObserver;
    const/16 v98, 0x0

    .line 153
    .local v98, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    const/16 v112, 0x0

    .line 154
    .local v112, usb:Lcom/android/server/usb/UsbService;
    const/16 v100, 0x0

    .line 155
    .local v100, serial:Lcom/android/server/SerialService;
    const/16 v110, 0x0

    .line 156
    .local v110, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v96, 0x0

    .line 157
    .local v96, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v106, 0x0

    .line 158
    .local v106, throttle:Lcom/android/server/ThrottleService;
    const/16 v85, 0x0

    .line 159
    .local v85, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v51, 0x0

    .line 160
    .local v51, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v73, 0x0

    .line 164
    .local v73, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 167
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 169
    .end local v91           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 171
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static/range {v66 .. v66}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 174
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 177
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 183
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 186
    .local v58, cryptState:Ljava/lang/String;
    const/16 v89, 0x0

    .line 187
    .local v89, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 188
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v89, 0x1

    .line 195
    :cond_1
    :goto_3
    if-eqz v66, :cond_11

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v89

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v90

    .line 198
    const/16 v69, 0x0

    .line 200
    .local v69, firstBoot:Z
    :try_start_2
    invoke-interface/range {v90 .. v90}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v69

    .line 204
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 206
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 217
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 221
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 224
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v75, Lcom/android/server/LightsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 227
    .end local v74           #lights:Lcom/android/server/LightsService;
    .local v75, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v75

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4e

    .line 229
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v115, Lcom/android/server/VibratorService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4f

    .line 233
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .local v115, vibrator:Lcom/android/server/VibratorService;
    :try_start_8
    const-string v3, "vibrator"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 239
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_50

    .line 241
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_9
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 243
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 247
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, 0x1

    move/from16 v0, v66

    if-eq v0, v3, :cond_13

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v69, :cond_14

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v89

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v123

    .line 251
    const-string v3, "window"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 252
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v73

    .line 253
    const-string v3, "input"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 255
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 260
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 261
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    move-object/from16 v114, v115

    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v74, v75

    .line 289
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v89           #onlyCore:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :goto_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110043

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v70

    .line 292
    .local v70, hasRotationLock:Z
    const/16 v59, 0x0

    .line 293
    .local v59, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v104, 0x0

    .line 294
    .local v104, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v71, 0x0

    .line 295
    .local v71, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v43, 0x0

    .line 296
    .local v43, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v92, 0x0

    .line 297
    .local v92, profile:Lcom/android/server/ProfileManagerService;
    const/16 v87, 0x0

    .line 298
    .local v87, notification:Lcom/android/server/NotificationManagerService;
    const/16 v117, 0x0

    .line 299
    .local v117, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v76, 0x0

    .line 300
    .local v76, location:Lcom/android/server/LocationManagerService;
    const/16 v56, 0x0

    .line 301
    .local v56, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v108, 0x0

    .line 302
    .local v108, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v78, 0x0

    .line 303
    .local v78, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v63, 0x0

    .line 306
    .local v63, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v66

    if-eq v0, v3, :cond_2

    .line 308
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v72, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v123

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 310
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .local v72, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v3, "input_method"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4c

    move-object/from16 v71, v72

    .line 316
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 325
    :cond_2
    :goto_d
    :try_start_d
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 331
    :goto_e
    :try_start_e
    invoke-interface/range {v90 .. v90}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 337
    :goto_f
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104040a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4b

    .line 344
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v66

    if-eq v0, v3, :cond_1a

    .line 345
    const/16 v81, 0x0

    .line 346
    .local v81, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 352
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v82, Lcom/android/server/MountService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 354
    .end local v81           #mountService:Lcom/android/server/MountService;
    .local v82, mountService:Lcom/android/server/MountService;
    :try_start_11
    const-string v3, "mount"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4a

    move-object/from16 v81, v82

    .line 361
    .end local v82           #mountService:Lcom/android/server/MountService;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    :cond_3
    :goto_11
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v79, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 363
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v79, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_13
    const-string v3, "lock_settings"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_49

    move-object/from16 v78, v79

    .line 369
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v60, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 371
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v60, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_15
    const-string v3, "device_policy"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_48

    move-object/from16 v59, v60

    .line 377
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v105, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v123

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 379
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v105, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_17
    const-string v3, "statusbar"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_47

    move-object/from16 v104, v105

    .line 385
    .end local v105           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 393
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 395
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 401
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v109, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 403
    .end local v108           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v109, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v109

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_46

    move-object/from16 v108, v109

    .line 409
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v108       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v84, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 411
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v84, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_45

    move-object/from16 v12, v84

    .line 417
    .end local v84           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 421
    .end local v83           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_44

    .line 427
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v122, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 429
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v122, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_43

    move-object/from16 v121, v122

    .line 435
    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v120, Lcom/android/server/WifiService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 437
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .local v120, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_42

    move-object/from16 v119, v120

    .line 443
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v55, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 446
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .local v55, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v3, "connectivity"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 447
    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 448
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 449
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 450
    invoke-virtual/range {v121 .. v121}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_41

    move-object/from16 v54, v55

    .line 456
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v102

    .line 458
    const-string v3, "servicediscovery"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 465
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v107, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 467
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .local v107, throttle:Lcom/android/server/ThrottleService;
    :try_start_28
    const-string v3, "throttle"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_40

    move-object/from16 v106, v107

    .line 474
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 486
    :goto_1f
    if-eqz v81, :cond_4

    .line 487
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 491
    :cond_4
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v93, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    .line 493
    .end local v92           #profile:Lcom/android/server/ProfileManagerService;
    .local v93, profile:Lcom/android/server/ProfileManagerService;
    :try_start_2b
    const-string v3, "profile"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_3f

    move-object/from16 v92, v93

    .line 499
    .end local v93           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v92       #profile:Lcom/android/server/ProfileManagerService;
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v88, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v104

    move-object/from16 v2, v74

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 501
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .local v88, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2d
    const-string v3, "notification"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 502
    move-object/from16 v0, v88

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_3e

    move-object/from16 v87, v88

    .line 508
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    :goto_21
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 516
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 518
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .local v77, location:Lcom/android/server/LocationManagerService;
    :try_start_30
    const-string v3, "location"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_3d

    move-object/from16 v76, v77

    .line 524
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v57, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 526
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_32
    const-string v3, "country_detector"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_3c

    move-object/from16 v56, v57

    .line 532
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_24
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 540
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 547
    :goto_26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110028

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-nez v16, :cond_5

    .line 552
    new-instance v118, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 553
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v118, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_36
    const-string v3, "wallpaper"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_3b

    move-object/from16 v117, v118

    .line 560
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_5
    :goto_27
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 562
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 570
    :cond_6
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v62, Lcom/android/server/DockObserver;

    move-object/from16 v0, v62

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .end local v61           #dock:Lcom/android/server/DockObserver;
    .local v62, dock:Lcom/android/server/DockObserver;
    move-object/from16 v61, v62

    .line 578
    .end local v62           #dock:Lcom/android/server/DockObserver;
    .restart local v61       #dock:Lcom/android/server/DockObserver;
    :goto_29
    if-eqz v70, :cond_7

    .line 579
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Rotation Switch Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v99, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .end local v98           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .local v99, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v98, v99

    .line 588
    .end local v99           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v98       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    :cond_7
    :goto_2a
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 596
    :goto_2b
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v113, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 599
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .local v113, usb:Lcom/android/server/usb/UsbService;
    :try_start_3c
    const-string v3, "usb"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_3a

    move-object/from16 v112, v113

    .line 605
    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v101, Lcom/android/server/SerialService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 608
    .end local v100           #serial:Lcom/android/server/SerialService;
    .local v101, serial:Lcom/android/server/SerialService;
    :try_start_3e
    const-string v3, "serial"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_39

    move-object/from16 v100, v101

    .line 614
    .end local v101           #serial:Lcom/android/server/SerialService;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    :goto_2d
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v111, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_24

    .end local v110           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v111, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v110, v111

    .line 622
    .end local v111           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v110       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2e
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_25

    .line 630
    :goto_2f
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v44, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 632
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_42
    const-string v3, "appwidget"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_38

    move-object/from16 v43, v44

    .line 638
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_30
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v97, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v97, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v96, v97

    .line 645
    .end local v97           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_31
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .line 656
    :goto_32
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .line 664
    :goto_33
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v86, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v86

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .end local v85           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v86, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v85, v86

    .line 671
    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v85       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_34
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v52, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .line 673
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v52, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_48
    const-string v3, "commontime_management"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_37

    move-object/from16 v51, v52

    .line 679
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_35
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    .line 685
    :goto_36
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 688
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v64, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    .line 691
    .end local v63           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v64, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_4b
    const-string v3, "dreams"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_36

    move-object/from16 v63, v64

    .line 698
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v63       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_8
    :goto_37
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "AssetRedirectionManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v3, "assetredirection"

    new-instance v9, Lcom/android/server/AssetRedirectionManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/AssetRedirectionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2e

    .line 706
    .end local v81           #mountService:Lcom/android/server/MountService;
    :goto_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v10, "service.adb.tcp.port"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 716
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 717
    .local v29, safeMode:Z
    if-eqz v29, :cond_19

    .line 718
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 720
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 722
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 731
    :goto_39
    :try_start_4d
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2f

    .line 736
    :goto_3a
    if-eqz v59, :cond_9

    .line 738
    :try_start_4e
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 744
    :cond_9
    :goto_3b
    if-eqz v87, :cond_a

    .line 746
    :try_start_4f
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 753
    :cond_a
    :goto_3c
    :try_start_50
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_32

    .line 758
    :goto_3d
    if-eqz v29, :cond_b

    .line 759
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 765
    :cond_b
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v53

    .line 766
    .local v53, config:Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 767
    .local v80, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Landroid/view/WindowManager;

    .line 768
    .local v116, w:Landroid/view/WindowManager;
    invoke-interface/range {v116 .. v116}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 769
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v53

    move-object/from16 v1, v80

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 771
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 773
    :try_start_51
    invoke-interface/range {v90 .. v90}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_33

    .line 778
    :goto_3e
    :try_start_52
    invoke-virtual/range {v78 .. v78}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    .line 783
    :goto_3f
    new-instance v68, Landroid/content/IntentFilter;

    invoke-direct/range {v68 .. v68}, Landroid/content/IntentFilter;-><init>()V

    .line 784
    .local v68, filter:Landroid/content/IntentFilter;
    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    const-string v3, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 789
    const-string v3, "package"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 790
    new-instance v3, Lcom/android/server/AppsLaunchFailureReceiver;

    invoke-direct {v3}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

    move-object/from16 v0, v68

    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    move-object/from16 v17, v4

    .line 794
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 795
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 796
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 797
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 798
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v54

    .line 799
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v61

    .line 800
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v98

    .line 801
    .local v24, rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v25, v112

    .line 802
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v106

    .line 803
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v110

    .line 804
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v43

    .line 805
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v117

    .line 806
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v71

    .line 807
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v96

    .line 808
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v76

    .line 809
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v56

    .line 810
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v85

    .line 811
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v51

    .line 812
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v108

    .line 813
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v104

    .line 814
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v63

    .line 815
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v73

    .line 816
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v46

    .line 823
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 942
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 943
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_c
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 947
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 116
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v61           #dock:Lcom/android/server/DockObserver;
    .end local v63           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v66           #factoryTest:I
    .end local v67           #factoryTestStr:Ljava/lang/String;
    .end local v68           #filter:Landroid/content/IntentFilter;
    .end local v70           #hasRotationLock:Z
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v85           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .end local v90           #pm:Landroid/content/pm/IPackageManager;
    .end local v92           #profile:Lcom/android/server/ProfileManagerService;
    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v98           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .end local v100           #serial:Lcom/android/server/SerialService;
    .end local v102           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .end local v108           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v110           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v123           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    const/16 v95, 0x0

    goto/16 :goto_0

    .line 122
    .restart local v95       #reboot:Z
    :cond_e
    const/16 v94, 0x0

    .restart local v94       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 130
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    .restart local v67       #factoryTestStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    goto/16 :goto_2

    .line 190
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v61       #dock:Lcom/android/server/DockObserver;
    .restart local v66       #factoryTest:I
    .restart local v73       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v83       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v89       #onlyCore:Z
    .restart local v90       #pm:Landroid/content/pm/IPackageManager;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v98       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    .restart local v102       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v123       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_10
    :try_start_53
    const-string v3, "1"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v89, 0x1

    goto/16 :goto_3

    .line 195
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 213
    .restart local v69       #firstBoot:Z
    :catch_0
    move-exception v65

    .line 214
    .local v65, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_1

    goto/16 :goto_6

    .line 284
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v65           #e:Ljava/lang/Throwable;
    .end local v69           #firstBoot:Z
    .end local v89           #onlyCore:Z
    :catch_1
    move-exception v65

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .line 285
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v65, e:Ljava/lang/RuntimeException;
    :goto_40
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 218
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #e:Ljava/lang/RuntimeException;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v89       #onlyCore:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 248
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    :cond_13
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 262
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_16

    .line 263
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 284
    :catch_2
    move-exception v65

    move-object/from16 v114, v115

    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto :goto_40

    .line 265
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    :cond_16
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v47, Landroid/server/BluetoothService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_2

    .line 267
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .local v47, bluetooth:Landroid/server/BluetoothService;
    :try_start_55
    const-string v3, "bluetooth"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 270
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 271
    new-instance v49, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_51

    .line 272
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_56
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 274
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_52

    move-object/from16 v48, v49

    .line 277
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_17
    :try_start_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v50

    .line 279
    .local v50, bluetoothOn:I
    if-eqz v50, :cond_18

    .line 280
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->enable()Z
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_51

    :cond_18
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 311
    .end local v50           #bluetoothOn:I
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v89           #onlyCore:Z
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #hasRotationLock:Z
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v92       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v65

    .line 312
    .local v65, e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 319
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v65

    .line 320
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 326
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v65

    .line 327
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 332
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v65

    .line 333
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 355
    .end local v65           #e:Ljava/lang/Throwable;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    :catch_7
    move-exception v65

    .line 356
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 364
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v65

    .line 365
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 372
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v65

    .line 373
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 380
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v65

    .line 381
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 388
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v65

    .line 389
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 396
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v65

    .line 397
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 404
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v65

    .line 405
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 412
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v65

    .line 413
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 422
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v65

    move-object/from16 v8, v83

    .line 423
    .end local v83           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 430
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v65

    .line 431
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 438
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v65

    .line 439
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 451
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v65

    .line 452
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 460
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v65

    .line 461
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 469
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v65

    .line 470
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 477
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v65

    .line 478
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 494
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v65

    .line 495
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 503
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v65

    .line 504
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 511
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v65

    .line 512
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 519
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v65

    .line 520
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 527
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v65

    .line 528
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 535
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v65

    .line 536
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 543
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v65

    .line 544
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 555
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v65

    .line 556
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 564
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v65

    .line 565
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 573
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v65

    .line 574
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 583
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v65

    .line 584
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting RotationSwitchObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 591
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v65

    .line 592
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 600
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v65

    .line 601
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 609
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v65

    .line 610
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 617
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v65

    .line 618
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 625
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v65

    .line 626
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 633
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v65

    .line 634
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 640
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v65

    .line 641
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 647
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v65

    .line 648
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 659
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v65

    .line 660
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 666
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v65

    .line 667
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 674
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v65

    .line 675
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 681
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v65

    .line 682
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 692
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v65

    .line 693
    .restart local v65       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 700
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v65

    .line 701
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting AssetRedirectionManager Service"

    move-object/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 725
    .end local v65           #e:Ljava/lang/Throwable;
    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v29       #safeMode:Z
    :cond_19
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_39

    .line 732
    :catch_2f
    move-exception v65

    .line 733
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 739
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v65

    .line 740
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 747
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v65

    .line 748
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 754
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v65

    .line 755
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 774
    .end local v65           #e:Ljava/lang/Throwable;
    .restart local v53       #config:Landroid/content/res/Configuration;
    .restart local v80       #metrics:Landroid/util/DisplayMetrics;
    .restart local v116       #w:Landroid/view/WindowManager;
    :catch_33
    move-exception v65

    .line 775
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 779
    .end local v65           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v65

    .line 780
    .restart local v65       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 201
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v63           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v65           #e:Ljava/lang/Throwable;
    .end local v70           #hasRotationLock:Z
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .end local v92           #profile:Lcom/android/server/ProfileManagerService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v108           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v83       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89       #onlyCore:Z
    :catch_35
    move-exception v3

    goto/16 :goto_5

    .line 692
    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v83           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v89           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #hasRotationLock:Z
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v92       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_36
    move-exception v65

    move-object/from16 v63, v64

    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v63       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_56

    .line 674
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_37
    move-exception v65

    move-object/from16 v51, v52

    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_55

    .line 633
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_38
    move-exception v65

    move-object/from16 v43, v44

    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_54

    .line 609
    .end local v100           #serial:Lcom/android/server/SerialService;
    .restart local v101       #serial:Lcom/android/server/SerialService;
    :catch_39
    move-exception v65

    move-object/from16 v100, v101

    .end local v101           #serial:Lcom/android/server/SerialService;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_53

    .line 600
    .end local v112           #usb:Lcom/android/server/usb/UsbService;
    .restart local v113       #usb:Lcom/android/server/usb/UsbService;
    :catch_3a
    move-exception v65

    move-object/from16 v112, v113

    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .restart local v112       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_52

    .line 555
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3b
    move-exception v65

    move-object/from16 v117, v118

    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_51

    .line 527
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3c
    move-exception v65

    move-object/from16 v56, v57

    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_50

    .line 519
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    :catch_3d
    move-exception v65

    move-object/from16 v76, v77

    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_4f

    .line 503
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    :catch_3e
    move-exception v65

    move-object/from16 v87, v88

    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4e

    .line 494
    .end local v92           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v93       #profile:Lcom/android/server/ProfileManagerService;
    :catch_3f
    move-exception v65

    move-object/from16 v92, v93

    .end local v93           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v92       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_4d

    .line 469
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    :catch_40
    move-exception v65

    move-object/from16 v106, v107

    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_4c

    .line 451
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v65

    move-object/from16 v54, v55

    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4b

    .line 438
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    :catch_42
    move-exception v65

    move-object/from16 v119, v120

    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_4a

    .line 430
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v122       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_43
    move-exception v65

    move-object/from16 v121, v122

    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_49

    .line 422
    :catch_44
    move-exception v65

    goto/16 :goto_48

    .line 412
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v83       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_45
    move-exception v65

    move-object/from16 v12, v84

    .end local v84           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_47

    .line 404
    .end local v108           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v65

    move-object/from16 v108, v109

    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v108       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_46

    .line 380
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v105       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_47
    move-exception v65

    move-object/from16 v104, v105

    .end local v105           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_45

    .line 372
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_48
    move-exception v65

    move-object/from16 v59, v60

    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_44

    .line 364
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_49
    move-exception v65

    move-object/from16 v78, v79

    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_43

    .line 355
    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v82       #mountService:Lcom/android/server/MountService;
    :catch_4a
    move-exception v65

    move-object/from16 v81, v82

    .end local v82           #mountService:Lcom/android/server/MountService;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_42

    .line 341
    .end local v81           #mountService:Lcom/android/server/MountService;
    :catch_4b
    move-exception v3

    goto/16 :goto_10

    .line 311
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4c
    move-exception v65

    move-object/from16 v71, v72

    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_41

    .line 284
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v63           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #hasRotationLock:Z
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .end local v92           #profile:Lcom/android/server/ProfileManagerService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v108           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #power:Lcom/android/server/PowerManagerService;
    :catch_4d
    move-exception v65

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v91

    .end local v91           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_40

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v89       #onlyCore:Z
    :catch_4e
    move-exception v65

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_40

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :catch_4f
    move-exception v65

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_40

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .restart local v42       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    :catch_50
    move-exception v65

    move-object/from16 v7, v42

    .end local v42           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v114, v115

    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_40

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    :catch_51
    move-exception v65

    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v114, v115

    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_40

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v114           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    :catch_52
    move-exception v65

    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v114, v115

    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_40

    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v89           #onlyCore:Z
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #hasRotationLock:Z
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v92       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1a
    move-object/from16 v8, v83

    .end local v83           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_38
.end method
