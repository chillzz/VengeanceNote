.class Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final serialVersionUID:J = -0x25be8c40f17ab62eL


# instance fields
.field private mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/android/settings/sound/c;

    invoke-direct {v0}, Lcom/android/settings/sound/c;-><init>()V

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 303
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 305
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 307
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 308
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 301
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method y(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;
    .locals 3
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 322
    :cond_0
    new-array v0, p1, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 323
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    return-object v0
.end method