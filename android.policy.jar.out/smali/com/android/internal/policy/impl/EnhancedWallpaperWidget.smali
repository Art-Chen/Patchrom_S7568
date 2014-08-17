.class public Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;
.super Ljava/lang/Object;
.source "EnhancedWallpaperWidget.java"


# static fields
.field private static lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "EnhancedWallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->DBG:Z

    .line 19
    sput-object v1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 20
    sput-object v1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    .line 27
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    return-object v0
.end method


# virtual methods
.method public getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    .line 31
    sput-object p1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    return-void
.end method

.method public setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    .line 39
    sput-object p1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    return-void
.end method
