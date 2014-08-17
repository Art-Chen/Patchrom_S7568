.class public Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private INV_NUM_DETAILS_HEIGHT:F

.field private INV_NUM_DETAILS_WIDTH:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field private bVelocityCheck:Ljava/lang/Boolean;

.field private bVelocityChecks:[Z

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private boxHeight:F

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchedView:Landroid/view/View;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field private u0:Ljava/nio/FloatBuffer;

.field private u1:Ljava/nio/FloatBuffer;

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private uv0:[F

.field private uv0_buf:I

.field private uv1:[F

.field private uv1_buf:I

.field private uv_handle0:I

.field private uv_handle1:I

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x3f80

    const/16 v3, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->DBG:Z

    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexture0Coord;\nattribute vec2 aTexture1Coord;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uRotate;\n void main() {\n  gl_Position = uMVPMatrix * aPosition;\n  float radian = radians( uRotate ); \n  float sinv = sin( radian ); \n   float cosv = cos( radian ); \n   vTexture0Coord = aTexture0Coord - vec2( 0.5, 0.5 );\n  vTexture1Coord = aTexture1Coord + vec2( 0.0, 1.0 ) - vec2( 0.5, 0.5 );\n  vTexture0Coord = vec2( vTexture0Coord.x * cosv - vTexture0Coord.y * sinv, vTexture0Coord.y * cosv + vTexture0Coord.x * sinv ); \n  vTexture1Coord = vec2( vTexture1Coord.x * cosv - vTexture1Coord.y * sinv, vTexture1Coord.y * cosv + vTexture1Coord.x * sinv ); \n  vTexture0Coord = vTexture0Coord + vec2( 0.5, 0.5 );\n  vTexture1Coord = vTexture1Coord + vec2( 0.5, 0.5 );\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    new-array v2, v4, [S

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    const/high16 v2, -0x3dd0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const/high16 v2, -0x3e48

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v2, 0x4234

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v2, 0x4238

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v2, 0x19

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide/high16 v2, 0x407b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->initWaters()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->checkSound()V

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .local v2, program:I
    if-eqz v2, :cond_0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x3

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    const/4 v0, 0x0

    .local v0, cnt:I
    const/4 v0, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    if-ge v1, v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    rem-int v6, v1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-float v5, v6, v7

    .local v5, ypos:F
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    div-int v6, v1, v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-float v4, v6, v7

    .local v4, xpos:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    aput v4, v6, v0

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v7, v0, 0x1

    neg-float v8, v5

    aput v8, v6, v7

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v7, v0, 0x2

    aput v9, v6, v7

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #xpos:F
    .end local v5           #ypos:F
    :cond_0
    const/4 v0, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x6

    new-array v6, v6, [S

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    const/4 v1, 0x1

    :goto_1
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v1, v6, :cond_2

    const/4 v3, 0x1

    .local v3, j:I
    :goto_2
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v3, v6, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v6, v3

    add-int v2, v6, v1

    .local v2, idx:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v7, v2, v7

    add-int/lit8 v7, v7, -0x1

    int-to-short v7, v7

    aput-short v7, v6, v0

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v8, v2, v8

    int-to-short v8, v8

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x2

    int-to-short v8, v2

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x3

    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v8, v2, v8

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x4

    int-to-short v8, v2

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x5

    add-int/lit8 v8, v2, -0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2           #idx:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #j:I
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aput v9, v6, v1

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x8893

    const v4, 0x88e4

    const/4 v3, 0x0

    const v2, 0x8892

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v5, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .local v1, shader:I
    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture1Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    return-void
.end method

.method private loadTexture()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const/4 v5, 0x1

    const v4, 0x46180400

    const/4 v3, 0x0

    const/16 v2, 0xde1

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x47037000

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    const v1, 0x47037000

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .local v8, xSpan:I
    const/4 v9, 0x1

    .local v9, ySpan:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v10, v11, :cond_1

    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v3, v10, v9

    .local v3, imax:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v10, v8

    .local v5, jmax:I
    :goto_0
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    move v1, v9

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    move v4, v8

    .local v4, j:I
    :goto_2
    if-ge v4, v5, :cond_3

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v4

    add-int v2, v10, v1

    .local v2, idx:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v11, v10, v2

    iget-object v12, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v12, v12, v2

    add-float/2addr v11, v12

    aput v11, v10, v2

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    const/high16 v11, 0x42c8

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    const/high16 v11, 0x42c8

    aput v11, v10, v2

    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v3           #imax:I
    .end local v4           #j:I
    .end local v5           #jmax:I
    :cond_1
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v3, v10, v9

    .restart local v3       #imax:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v10, v8

    .restart local v5       #jmax:I
    goto :goto_0

    .restart local v1       #i:I
    .restart local v2       #idx:I
    .restart local v4       #j:I
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    const/high16 v11, -0x3d38

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    const/high16 v11, -0x3d38

    aput v11, v10, v2

    goto :goto_3

    .end local v2           #idx:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #j:I
    :cond_4
    move v1, v9

    :goto_4
    if-ge v1, v3, :cond_8

    move v4, v8

    .restart local v4       #j:I
    :goto_5
    if-ge v4, v5, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v4

    add-int v2, v10, v1

    .restart local v2       #idx:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    neg-float v10, v10

    const/high16 v11, 0x4080

    mul-float v6, v10, v11

    .local v6, tempVelocity:F
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v2, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v2, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    add-int/lit8 v2, v2, 0x2

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v2, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v2, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v11, v11, v2

    const/high16 v12, 0x3f00

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    aput v11, v10, v2

    const v0, 0x3a03126f

    .local v0, clip:F
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v10, v10, v2

    const v11, 0x3a03126f

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v10, v10, v2

    const v11, -0x45fced91

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    :cond_5
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v0           #clip:F
    .end local v2           #idx:I
    .end local v6           #tempVelocity:F
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v4           #j:I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v7, Landroid/opengl/GLSurfaceView;

    .local v7, view:Landroid/opengl/GLSurfaceView;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const-string v10, "dirty"

    const-string v11, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #view:Landroid/opengl/GLSurfaceView;
    :cond_9
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, f:F
    sub-float v1, p4, p5

    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v8, p1, v2

    const/4 v2, 0x2

    aput v8, p1, v2

    const/4 v2, 0x3

    aput v8, p1, v2

    const/4 v2, 0x4

    aput v8, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v2, 0x6

    aput v8, p1, v2

    const/4 v2, 0x7

    aput v8, p1, v2

    const/16 v2, 0x8

    aput v8, p1, v2

    const/16 v2, 0x9

    aput v8, p1, v2

    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    const/16 v2, 0xc

    aput v8, p1, v2

    const/16 v2, 0xd

    aput v8, p1, v2

    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    const/16 v2, 0xf

    aput v8, p1, v2

    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    new-instance v7, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;I)V

    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 13
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    const/4 v0, 0x0

    .local v0, acc:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v9, v9

    div-float v9, p1, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v10, v10

    mul-float p1, v9, v10

    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    div-float v9, p2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v10, v10

    mul-float p2, v9, v10

    const/high16 v9, 0x40a0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_1

    const/high16 v9, 0x4040

    sub-float v9, p1, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .local v5, imin:I
    :goto_0
    const/high16 v9, 0x40a0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_2

    const/high16 v9, 0x4040

    sub-float v9, p2, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v8, v9

    .local v8, jmin:I
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_3

    const/high16 v9, 0x4080

    add-float/2addr v9, p1

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v4, v9

    .local v4, imax:I
    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-gez v9, :cond_4

    const/high16 v9, 0x4080

    add-float/2addr v9, p2

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    .local v7, jmax:I
    :goto_3
    move v3, v5

    .local v3, i:I
    :goto_4
    if-ge v3, v4, :cond_6

    move v6, v8

    .local v6, j:I
    :goto_5
    if-ge v6, v7, :cond_5

    int-to-float v9, v3

    sub-float v1, p1, v9

    .local v1, dx:F
    int-to-float v9, v6

    sub-float v2, p2, v9

    .local v2, dy:F
    const/high16 v9, 0x4040

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v0, v9, v10

    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    aget v11, v9, v10

    mul-float v12, v0, p3

    add-float/2addr v11, v12

    aput v11, v9, v10

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #i:I
    .end local v4           #imax:I
    .end local v5           #imin:I
    .end local v6           #j:I
    .end local v7           #jmax:I
    .end local v8           #jmin:I
    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    .restart local v5       #imin:I
    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    .restart local v8       #jmin:I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v4, v9, -0x1

    goto :goto_2

    .restart local v4       #imax:I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v7, v9, -0x1

    goto :goto_3

    .restart local v3       #i:I
    .restart local v6       #j:I
    .restart local v7       #jmax:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v6           #j:I
    :cond_6
    return-void
.end method

.method private setBackground()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, wallpaperFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .local v5, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .end local v5           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080602

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .end local v6           #wallpaperFile:Ljava/io/File;
    :goto_2
    return-void

    .restart local v6       #wallpaperFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108041f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    :cond_3
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v6           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080602

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMesh()V
    .locals 36

    .prologue
    const/16 v23, 0x0

    .local v23, u:F
    const/16 v25, 0x0

    .local v25, v:F
    const/4 v13, 0x0

    .local v13, len1:F
    const/4 v14, 0x0

    .local v14, len2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    move/from16 v32, v0

    const/high16 v33, 0x3f80

    sub-float v19, v32, v33

    .local v19, rimo:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f00

    mul-float v30, v32, v33

    .local v30, xmax:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f00

    mul-float v31, v32, v33

    .local v31, ymax:F
    const/high16 v32, 0x3f80

    div-float v9, v32, v30

    .local v9, ixmax:F
    const/high16 v32, 0x3f80

    div-float v10, v32, v31

    .local v10, iymax:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v6, v0, :cond_12

    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v32, v32, v11

    add-int v32, v32, v6

    mul-int/lit8 v7, v32, 0x3

    .local v7, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v32, v32, v11

    add-int v32, v32, v6

    mul-int/lit8 v8, v32, 0x2

    .local v8, index2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_2

    const/4 v12, 0x0

    .local v12, len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    aget v26, v32, v7

    .local v26, vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x1

    aget v28, v32, v33

    .local v28, vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x2

    const/16 v29, 0x0

    aput v29, v32, v33

    .local v29, vz:F
    const/4 v15, 0x0

    .local v15, nx:F
    const/16 v16, 0x0

    .local v16, ny:F
    const/16 v17, 0x0

    .local v17, nz:F
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v2, v26

    .local v2, dx:F
    move/from16 v3, v28

    .local v3, dy:F
    const/high16 v4, 0x41f0

    .local v4, dz:F
    const/high16 v12, 0x3e80

    mul-float/2addr v2, v12

    mul-float/2addr v3, v12

    mul-float/2addr v4, v12

    mul-float v22, v4, v19

    .local v22, t:F
    :goto_2
    const/16 v32, 0x0

    cmpl-float v32, v2, v32

    if-nez v32, :cond_5

    const/16 v32, 0x0

    cmpl-float v32, v3, v32

    if-nez v32, :cond_3

    const/high16 v25, 0x3f00

    move/from16 v23, v25

    const/16 v21, 0x0

    .local v21, sign:F
    :goto_3
    const/16 v32, 0x0

    cmpl-float v32, v21, v32

    if-eqz v32, :cond_1

    mul-float v32, v21, v31

    sub-float v32, v32, v28

    div-float v22, v32, v3

    mul-float v32, v22, v2

    add-float v20, v32, v26

    .local v20, s:F
    mul-float v32, v22, v4

    add-float v5, v32, v29

    .local v5, hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    cmpl-float v32, v5, v32

    if-lez v32, :cond_10

    const v32, 0x41f73333

    sub-float v32, v32, v29

    div-float v18, v32, v4

    .local v18, r:F
    mul-float v32, v2, v18

    add-float v32, v32, v26

    mul-float v32, v32, v10

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    mul-float v32, v3, v18

    add-float v32, v32, v28

    mul-float v32, v32, v10

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_e

    const/high16 v23, 0x3f80

    :cond_0
    :goto_4
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_f

    const/high16 v25, 0x3f80

    .end local v5           #hitz:F
    .end local v18           #r:F
    .end local v20           #s:F
    :cond_1
    :goto_5
    const/high16 v32, 0x3f00

    mul-float v32, v32, v15

    const/high16 v33, 0x3f00

    add-float v32, v32, v33

    int-to-float v0, v6

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f00

    mul-float v34, v34, v35

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    const/high16 v34, 0x3e80

    mul-float v33, v33, v34

    add-float v24, v32, v33

    .local v24, uxx:F
    const/high16 v32, 0x3f00

    mul-float v32, v32, v16

    const/high16 v33, 0x3f00

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3f00

    mul-float v33, v33, v34

    int-to-float v0, v11

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    const/high16 v34, 0x3e80

    mul-float v33, v33, v34

    add-float v27, v32, v33

    .local v27, vxx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v32, v0

    aput v24, v32, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v8, 0x1

    aput v27, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v32, v0

    aput v23, v32, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v8, 0x1

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v12           #len:F
    .end local v15           #nx:F
    .end local v16           #ny:F
    .end local v17           #nz:F
    .end local v21           #sign:F
    .end local v22           #t:F
    .end local v24           #uxx:F
    .end local v26           #vx:F
    .end local v27           #vxx:F
    .end local v28           #vy:F
    .end local v29           #vz:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x2

    aget v12, v32, v33

    .restart local v12       #len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    aget v26, v32, v7

    .restart local v26       #vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x1

    aget v28, v32, v33

    .restart local v28       #vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x2

    const/high16 v34, 0x3e80

    mul-float v29, v12, v34

    aput v29, v32, v33

    .restart local v29       #vz:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x1

    aget v32, v32, v33

    sub-float v32, v12, v32

    const/high16 v33, 0x3e80

    mul-float v15, v32, v33

    .restart local v15       #nx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x2

    aget v32, v32, v33

    sub-float v32, v12, v32

    const/high16 v33, 0x3e80

    mul-float v16, v32, v33

    .restart local v16       #ny:F
    const-wide/high16 v32, 0x3ff0

    mul-float v34, v15, v15

    mul-float v35, v16, v16

    add-float v34, v34, v35

    const/high16 v35, 0x3f80

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v17, v0

    .restart local v17       #nz:F
    mul-float v15, v15, v17

    mul-float v16, v16, v17

    move/from16 v2, v26

    .restart local v2       #dx:F
    move/from16 v3, v28

    .restart local v3       #dy:F
    const/high16 v32, 0x41f0

    add-float v4, v29, v32

    .restart local v4       #dz:F
    const-wide/high16 v32, 0x3ff0

    mul-float v34, v2, v2

    mul-float v35, v3, v3

    add-float v34, v34, v35

    mul-float v35, v4, v4

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v12, v0

    mul-float/2addr v2, v12

    mul-float/2addr v3, v12

    mul-float/2addr v4, v12

    mul-float v32, v2, v15

    mul-float v33, v3, v16

    add-float v32, v32, v33

    add-float v32, v32, v4

    mul-float v22, v32, v19

    .restart local v22       #t:F
    mul-float v32, v15, v22

    add-float v2, v2, v32

    mul-float v32, v16, v22

    add-float v3, v3, v32

    goto/16 :goto_2

    :cond_3
    const/16 v32, 0x0

    cmpg-float v32, v3, v32

    if-gez v32, :cond_4

    const/high16 v21, -0x4080

    .restart local v21       #sign:F
    :goto_6
    goto/16 :goto_3

    .end local v21           #sign:F
    :cond_4
    const/high16 v21, 0x3f80

    goto :goto_6

    :cond_5
    const/16 v32, 0x0

    cmpg-float v32, v2, v32

    if-gez v32, :cond_8

    const/high16 v21, -0x4080

    .restart local v21       #sign:F
    :goto_7
    mul-float v32, v21, v30

    sub-float v32, v32, v26

    div-float v22, v32, v2

    mul-float v32, v22, v3

    add-float v20, v32, v28

    .restart local v20       #s:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v32, v20

    if-gez v32, :cond_c

    cmpg-float v32, v20, v30

    if-gez v32, :cond_c

    mul-float v32, v22, v4

    add-float v5, v32, v29

    .restart local v5       #hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    cmpl-float v32, v5, v32

    if-lez v32, :cond_b

    const v32, 0x41f73333

    sub-float v32, v32, v29

    div-float v18, v32, v4

    .restart local v18       #r:F
    mul-float v32, v2, v18

    add-float v32, v32, v26

    mul-float v32, v32, v9

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    mul-float v32, v3, v18

    add-float v32, v32, v28

    mul-float v32, v32, v9

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_9

    const/high16 v23, 0x3f80

    :cond_6
    :goto_8
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_a

    const/high16 v25, 0x3f80

    :cond_7
    :goto_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .end local v5           #hitz:F
    .end local v18           #r:F
    .end local v20           #s:F
    .end local v21           #sign:F
    :cond_8
    const/high16 v21, 0x3f80

    goto :goto_7

    .restart local v5       #hitz:F
    .restart local v18       #r:F
    .restart local v20       #s:F
    .restart local v21       #sign:F
    :cond_9
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_6

    const/16 v23, 0x0

    goto :goto_8

    :cond_a
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_7

    const/16 v25, 0x0

    goto :goto_9

    .end local v18           #r:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v33, v0

    add-float v33, v33, v5

    div-float v18, v32, v33

    .restart local v18       #r:F
    mul-float v32, v21, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    mul-float v32, v20, v9

    mul-float v32, v32, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    goto :goto_9

    .end local v5           #hitz:F
    .end local v18           #r:F
    :cond_c
    const/16 v32, 0x0

    cmpg-float v32, v3, v32

    if-gez v32, :cond_d

    const/high16 v21, -0x4080

    :goto_a
    goto/16 :goto_3

    :cond_d
    const/high16 v21, 0x3f80

    goto :goto_a

    .restart local v5       #hitz:F
    .restart local v18       #r:F
    :cond_e
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_0

    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_f
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_1

    const/16 v25, 0x0

    goto/16 :goto_5

    .end local v18           #r:F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v33, v0

    add-float v33, v33, v5

    div-float v18, v32, v33

    .restart local v18       #r:F
    mul-float v32, v20, v10

    mul-float v32, v32, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    mul-float v32, v21, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    goto/16 :goto_5

    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v5           #hitz:F
    .end local v7           #index:I
    .end local v8           #index2:I
    .end local v12           #len:F
    .end local v15           #nx:F
    .end local v16           #ny:F
    .end local v17           #nz:F
    .end local v18           #r:F
    .end local v20           #s:F
    .end local v21           #sign:F
    .end local v22           #t:F
    .end local v26           #vx:F
    .end local v28           #vy:F
    .end local v29           #vz:F
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v11           #j:I
    :cond_12
    return-void
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x68

    const/16 v5, 0x32

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    :cond_1
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_a

    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x3e

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    const/16 v0, 0x3e

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    :goto_3
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4074400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    :cond_7
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    goto/16 :goto_1

    :cond_8
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    goto :goto_2

    :cond_9
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_d

    :cond_c
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_f

    :cond_e
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_12

    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x3e

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    const/16 v0, 0x3e

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    :goto_4
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    :goto_5
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide/high16 v0, 0x4072

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    :cond_10
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    goto :goto_5

    :cond_12
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4074400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    const/4 v1, 0x0

    .local v1, tempX:F
    move v2, p1

    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    int-to-float v1, v0

    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchedView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playSound(I)V

    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v10, v1

    .local v10, distForwWave:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->cleanUp()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:I
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x96

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    :cond_d
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const v7, 0x8892

    const/16 v2, 0x1406

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadTexture()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->move()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    const/4 v14, 0x0

    .local v14, translateX:F
    const/4 v15, 0x0

    .local v15, translateY:F
    const/16 v16, 0x0

    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void

    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createBuffers()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShaderProp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeBuffers()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    return-void

    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    const/4 v0, 0x0

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    return-void

    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method
