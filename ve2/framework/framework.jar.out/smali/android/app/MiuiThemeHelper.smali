.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final TAG:Ljava/lang/String; = "IconHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    .line 95
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "srcConfig"
    .parameter "desConfig"

    .prologue
    .line 99
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 100
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "info"
    .parameter "customized"

    .prologue
    .line 88
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "activityName"

    .prologue
    .line 52
    invoke-static {p1, p4}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, fileName:Ljava/lang/String;
    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v3, v2, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v3, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-static {v3}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 83
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 61
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->isExclude(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    const-string v5, "icon_mask.png"

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 81
    invoke-static {v3, v0}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move-object v1, v0

    .line 83
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 64
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    const-string v4, "IconHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generate customized icon for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    move-object v4, v0

    .line 74
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v4}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changes"

    .prologue
    .line 103
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 105
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 107
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "changes"
    .parameter "config"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 111
    const/high16 v2, -0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 113
    .local v0, flag:J
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    .line 114
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 116
    .end local v0           #flag:J
    :cond_0
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "appFlags"

    .prologue
    .line 207
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    .line 39
    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 41
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 46
    .end local v0           #i:I
    :goto_1
    return v1

    .line 40
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 46
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changes"
    .parameter "config"

    .prologue
    .line 119
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 120
    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 15
    .parameter "value"

    .prologue
    .line 129
    const/4 v8, -0x4

    .line 130
    .local v8, intPos:I
    const/4 v2, -0x3

    .line 131
    .local v2, dotPos:I
    const/4 v6, -0x2

    .line 132
    .local v6, fractionPos:I
    const/4 v11, -0x1

    .line 133
    .local v11, unitPos:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 134
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, c:C
    const/4 v13, -0x4

    if-ne v8, v13, :cond_0

    const/16 v13, 0x30

    if-lt v0, v13, :cond_0

    const/16 v13, 0x39

    if-gt v0, v13, :cond_0

    .line 136
    move v8, v7

    .line 138
    :cond_0
    const/4 v13, -0x3

    if-ne v2, v13, :cond_1

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_1

    .line 139
    move v2, v7

    .line 141
    :cond_1
    const/4 v13, -0x3

    if-eq v2, v13, :cond_2

    const/16 v13, 0x30

    if-lt v0, v13, :cond_2

    const/16 v13, 0x39

    if-gt v0, v13, :cond_2

    .line 142
    move v6, v7

    .line 144
    :cond_2
    const/4 v13, -0x1

    if-ne v11, v13, :cond_6

    const/16 v13, 0x61

    if-lt v0, v13, :cond_6

    const/16 v13, 0x7a

    if-gt v0, v13, :cond_6

    .line 145
    move v11, v7

    .line 149
    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x0

    .line 150
    .local v4, f:F
    const/4 v5, 0x0

    .line 151
    .local v5, fraction:I
    const/4 v12, 0x0

    .line 152
    .local v12, unitType:I
    const/4 v9, 0x0

    .line 154
    .local v9, mantissaShift:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_11

    if-ge v2, v6, :cond_11

    if-ge v6, v11, :cond_11

    .line 156
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 160
    const/4 v13, -0x3

    if-eq v2, v13, :cond_4

    const/4 v13, -0x2

    if-eq v6, v13, :cond_4

    .line 162
    :try_start_1
    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 167
    :cond_4
    const/16 v13, 0x100

    if-ge v5, v13, :cond_7

    .line 168
    const/high16 v13, 0x4380

    mul-float/2addr v4, v13

    .line 179
    :cond_5
    :goto_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, unit:Ljava/lang/String;
    const-string/jumbo v13, "px"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 181
    const/4 v12, 0x0

    .line 196
    :goto_2
    float-to-int v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 197
    .local v1, complex:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, -0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shl-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 203
    .end local v1           #complex:Ljava/lang/Integer;
    .end local v10           #unit:Ljava/lang/String;
    :goto_3
    return-object v1

    .line 133
    .end local v4           #f:F
    .end local v5           #fraction:I
    .end local v9           #mantissaShift:I
    .end local v12           #unitType:I
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 157
    .end local v0           #c:C
    .restart local v4       #f:F
    .restart local v5       #fraction:I
    .restart local v9       #mantissaShift:I
    .restart local v12       #unitType:I
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 163
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 164
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 169
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const v13, 0x8000

    if-ge v5, v13, :cond_8

    .line 170
    const/high16 v13, 0x4700

    mul-float/2addr v4, v13

    .line 171
    const/4 v9, 0x1

    goto :goto_1

    .line 172
    :cond_8
    const/high16 v13, 0x4000

    if-ge v5, v13, :cond_9

    .line 173
    const/high16 v13, 0x4e80

    mul-float/2addr v4, v13

    .line 174
    const/4 v9, 0x2

    goto :goto_1

    .line 175
    :cond_9
    const/high16 v13, 0x20

    if-ge v5, v13, :cond_5

    .line 176
    const/high16 v13, 0x4a00

    mul-float/2addr v4, v13

    .line 177
    const/4 v9, 0x3

    goto :goto_1

    .line 182
    .restart local v10       #unit:Ljava/lang/String;
    :cond_a
    const-string v13, "dp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "dip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 183
    :cond_b
    const/4 v12, 0x1

    goto :goto_2

    .line 184
    :cond_c
    const-string/jumbo v13, "sp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 185
    const/4 v12, 0x2

    goto :goto_2

    .line 186
    :cond_d
    const-string/jumbo v13, "pt"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 187
    const/4 v12, 0x3

    goto :goto_2

    .line 188
    :cond_e
    const-string v13, "in"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 189
    const/4 v12, 0x4

    goto :goto_2

    .line 190
    :cond_f
    const-string/jumbo v13, "mm"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 191
    const/4 v12, 0x5

    goto/16 :goto_2

    .line 193
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 201
    .end local v10           #unit:Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3
.end method
