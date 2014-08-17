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

    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EnhancedWallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->DBG:Z

    sput-object v1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    return-object v0
.end method


# virtual methods
.method public getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
