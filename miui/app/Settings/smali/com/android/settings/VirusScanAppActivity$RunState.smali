.class final enum Lcom/android/settings/VirusScanAppActivity$RunState;
.super Ljava/lang/Enum;
.source "VirusScanAppActivity.java"


# static fields
.field public static final enum Ek:Lcom/android/settings/VirusScanAppActivity$RunState;

.field public static final enum El:Lcom/android/settings/VirusScanAppActivity$RunState;

.field public static final enum Em:Lcom/android/settings/VirusScanAppActivity$RunState;

.field public static final enum En:Lcom/android/settings/VirusScanAppActivity$RunState;

.field private static final synthetic Eo:[Lcom/android/settings/VirusScanAppActivity$RunState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    const-string v1, "RS_Scanning"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/VirusScanAppActivity$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Ek:Lcom/android/settings/VirusScanAppActivity$RunState;

    .line 78
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    const-string v1, "RS_Stop"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/VirusScanAppActivity$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->El:Lcom/android/settings/VirusScanAppActivity$RunState;

    .line 79
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    const-string v1, "RS_Risk"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/VirusScanAppActivity$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Em:Lcom/android/settings/VirusScanAppActivity$RunState;

    .line 80
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    const-string v1, "RS_NoRisk"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/VirusScanAppActivity$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->En:Lcom/android/settings/VirusScanAppActivity$RunState;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/VirusScanAppActivity$RunState;

    sget-object v1, Lcom/android/settings/VirusScanAppActivity$RunState;->Ek:Lcom/android/settings/VirusScanAppActivity$RunState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/VirusScanAppActivity$RunState;->El:Lcom/android/settings/VirusScanAppActivity$RunState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/VirusScanAppActivity$RunState;->Em:Lcom/android/settings/VirusScanAppActivity$RunState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/VirusScanAppActivity$RunState;->En:Lcom/android/settings/VirusScanAppActivity$RunState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Eo:[Lcom/android/settings/VirusScanAppActivity$RunState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1
    .parameter

    .prologue
    .line 76
    const-class v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Eo:[Lcom/android/settings/VirusScanAppActivity$RunState;

    invoke-virtual {v0}, [Lcom/android/settings/VirusScanAppActivity$RunState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method