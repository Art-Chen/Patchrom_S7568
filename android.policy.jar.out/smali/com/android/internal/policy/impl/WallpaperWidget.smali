.class Lcom/android/internal/policy/impl/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final DBG:Z

.field private final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpapaerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v1, "WallpaperWidget"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->DBG:Z

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 29
    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 30
    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 43
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_1

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 57
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setEnhancedLockScreenWallpaper()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const v8, 0x108041f

    .line 126
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 131
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 161
    .local v6, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 165
    :goto_1
    return-object v6

    .line 134
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 136
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 140
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 141
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 142
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 146
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 148
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 152
    .end local v5           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 153
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 154
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 162
    .restart local v6       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setEnhancedLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const-string v0, "WallpaperWidget"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    .line 78
    const-string v0, "WallpaperWidget"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 84
    iget v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 85
    const-string v5, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 89
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 92
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v4, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 119
    .end local v4           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 122
    :cond_0
    return-void

    .line 87
    .end local v2           #file:Ljava/io/File;
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const-string v5, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_0

    .line 96
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 97
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 98
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 102
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    if-ne v5, v6, :cond_3

    const-string v5, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    :goto_3
    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, alternateFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 106
    :try_start_2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v4

    .line 111
    .end local v4           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1

    .line 102
    .end local v0           #alternateFile:Ljava/io/File;
    :cond_3
    const-string v5, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    goto :goto_3

    .line 108
    .restart local v0       #alternateFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 109
    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 110
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 114
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 115
    iget-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 108
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_4

    .line 96
    .end local v0           #alternateFile:Ljava/io/File;
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method
