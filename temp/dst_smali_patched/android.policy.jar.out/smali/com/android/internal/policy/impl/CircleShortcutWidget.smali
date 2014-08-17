.class public Lcom/android/internal/policy/impl/CircleShortcutWidget;
.super Landroid/widget/LinearLayout;
.source "CircleShortcutWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;,
        Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    }
.end annotation


# static fields
.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String; = null

.field private static final BADGE_URI:Landroid/net/Uri; = null

.field private static final MAX_SHORTCUT_COUNT_WHEN_CONTEXTUAL_MODE:I = 0x5

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mItemCount:I

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final CAMERA_ACTIVITY_NAME:Ljava/lang/String;

.field private final CAMERA_PACKAGE_NAME:Ljava/lang/String;

.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFaceLockOn:Z

.field private mIsTablet:Z

.field private mOldBounds:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private shortcutItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mTempOffset:[I

    sput v2, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewWidth:I

    sput v2, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewHeight:I

    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 13
    .parameter "context"
    .parameter "callback"
    .parameter "circleUnlockWidget"
    .parameter "configuration"
    .parameter "facelockOn"
    .parameter "updateMonitor"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v9, "CircleShortcutWidget"

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->FADE_IN_OUT_ANIMATION_DURATION:I

    const-string v9, "com.sec.android.app.camera"

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->CAMERA_PACKAGE_NAME:Ljava/lang/String;

    const-string v9, "com.sec.android.app.camera.Camera"

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->CAMERA_ACTIVITY_NAME:Ljava/lang/String;

    const/16 v9, 0x12c2

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->MISSED_EVENT_UPDATE:I

    new-instance v9, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/CircleShortcutWidget$2;

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/internal/policy/impl/CircleShortcutWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p4

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOrientation:I

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsFaceLockOn:Z

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_shortcut"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsTablet:Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    sput-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v9, Landroid/graphics/BlurMaskFilter;

    const/high16 v10, 0x40c0

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v10, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v9, -0x1

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOuterGlowColor:I

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v2, cm:Landroid/graphics/ColorMatrix;
    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    invoke-static {v2, v9, v10}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    new-instance v9, Lcom/android/internal/policy/impl/CircleShortcutWidget$3;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v4, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v4, density:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->isScreenLarge()Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x78

    if-ne v4, v9, :cond_4

    const/16 v9, 0xa0

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "density = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p6

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerShortcutWidgetUpdateForContextCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050055

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewHeight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10802b6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sput-object v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050057

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sFontSizeDefault:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050058

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sFontSizeSmall:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sIconCenterXOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105005a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sIconTopToTopOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_shortcut_app_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, activityList:Ljava/lang/String;
    if-eqz v1, :cond_9

    const/4 v5, 0x0

    .local v5, dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3b

    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v8, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v8, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, count:I
    invoke-interface {v8}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, pkgActivity:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v7, v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    .end local v1           #activityList:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #pkgActivity:Ljava/lang/String;
    .end local v8           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_4
    const/16 v9, 0xa0

    if-ne v4, v9, :cond_5

    const/16 v9, 0xf0

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0xf0

    if-ne v4, v9, :cond_6

    const/16 v9, 0x140

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    :cond_6
    const/16 v9, 0x140

    if-ne v4, v9, :cond_2

    const/16 v9, 0x140

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    .restart local v1       #activityList:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_8
    sput v3, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    goto/16 :goto_0

    .end local v3           #count:I
    .end local v5           #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$2100()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$2400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$2700()Landroid/graphics/Paint;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2800()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method private compareItem(Landroid/net/Uri;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;
    .locals 17
    .parameter "ContextUri"
    .parameter "contextMode"
    .parameter "count"

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Success to get cursor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .local v16, rowcount:I
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .local v9, columncount:I
    :cond_0
    const/4 v15, 0x0

    .local v15, isDuplicateItem:Z
    const-string v3, "package_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .local v14, idxOfPkg:I
    const-string v3, "class_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .local v13, idxOfActivity:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, contextualItemName:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v15, 0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Set contextual shortcut item additionally."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #columncount:I
    .end local v10           #contextualItemName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxOfActivity:I
    .end local v14           #idxOfPkg:I
    .end local v15           #isDuplicateItem:Z
    .end local v16           #rowcount:I
    :goto_1
    return-object v10

    .restart local v9       #columncount:I
    .restart local v10       #contextualItemName:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #idxOfActivity:I
    .restart local v14       #idxOfPkg:I
    .restart local v15       #isDuplicateItem:Z
    .restart local v16       #rowcount:I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Contextual shortcut item is duplicated with shortcut items on settings."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .end local v9           #columncount:I
    .end local v10           #contextualItemName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxOfActivity:I
    .end local v14           #idxOfPkg:I
    .end local v15           #isDuplicateItem:Z
    .end local v16           #rowcount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get cursor because DB empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .restart local v9       #columncount:I
    .restart local v10       #contextualItemName:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #idxOfActivity:I
    .restart local v14       #idxOfPkg:I
    .restart local v15       #isDuplicateItem:Z
    .restart local v16       #rowcount:I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v16, v0

    .local v16, width:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    .local v9, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .local v11, iconHeight:I
    if-lez v16, :cond_5

    if-lez v9, :cond_5

    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_a

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .local v14, ratio:F
    if-le v12, v11, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .local v15, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .local v18, y:I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    .restart local p1
    :cond_5
    :goto_3
    monitor-exit v20

    return-object p1

    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #height:I
    .end local v16           #width:I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .restart local v9       #height:I
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    .restart local v16       #width:I
    :cond_8
    if-le v11, v12, :cond_4

    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    :cond_9
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    .end local v14           #ratio:F
    :cond_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth < width && iconHeight < height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .restart local v17       #x:I
    sub-int v19, v9, v11

    div-int/lit8 v18, v19, 0x2

    .restart local v18       #y:I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .parameter "cn"

    .prologue
    const/4 v0, 0x0

    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hide"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .end local v1           #tmpView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isScreenLarge()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .local v0, screenSize:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshShortcutItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->onPressed(Z)V

    check-cast v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    .end local v1           #tmpView:Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setOpacity(D)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method private reloadBadges()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildCount()I

    move-result v7

    .local v7, children:I
    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, tmpView:Landroid/view/View;
    instance-of v0, v8, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setBadgeCount(I)V

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->refreshBadgeCount()V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .end local v8           #tmpView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;
    .locals 9
    .parameter "contextMode"
    .parameter "count"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, resources:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, candidateApp:[Ljava/lang/String;
    const/4 v0, 0x5

    .local v0, DEFAULT_APPS_COUNT:I
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_2

    const v6, 0x1070021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, isDuplicateItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v2, v6, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, p2, :cond_5

    aget-object v6, v1, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v3           #isDuplicateItem:Z
    .end local v4           #j:I
    :cond_2
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_3

    const v6, 0x1070022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_4

    const v6, 0x1070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_0

    const v6, 0x1070024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v2       #i:I
    .restart local v3       #isDuplicateItem:Z
    .restart local v4       #j:I
    :cond_5
    if-nez v3, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set default contextual shortcut : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v1, v2

    .end local v4           #j:I
    :goto_3
    return-object v6

    .restart local v4       #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #j:I
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v7, "There is a fault so devive should set duplicate shortcut."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    aget-object v6, v1, v6

    goto :goto_3
.end method

.method private setContextualItem(Landroid/content/Context;I)I
    .locals 0
    .parameter "context"
    .parameter "count"

    .prologue
    return p2
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 11
    .parameter "cm"
    .parameter "contrast"
    .parameter "saturation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    add-float v4, p1, v10

    .local v4, scale:F
    const/high16 v6, -0x4100

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x437f

    mul-float v5, v6, v7

    .local v5, translate:F
    sub-float v3, v10, p2

    .local v3, invSat:F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .local v2, R:F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .local v1, G:F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .local v0, B:F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .parameter "context"
    .parameter "pkgActivity"
    .parameter "count"

    .prologue
    add-int/lit8 p3, p3, 0x1

    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, commaIndex:I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, pkgName:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, activityName:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .local v1, cn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #cn:Landroid/content/ComponentName;
    new-instance v4, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .local v4, testItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->access$400(Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/internal/policy/impl/CircleShortcutWidget$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    return p3

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public ShortcutWidgetUpdateForContext()V
    .locals 0

    .prologue
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    :goto_2
    return-object v4

    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .local v2, iconId:I
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .end local v2           #iconId:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->refreshShortcutItems()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->refreshShortcutItems()V

    return-void
.end method

.method public setContextualItemAddAnimation(I)V
    .locals 10
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v9, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x4000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v0, ani:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v1, v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
