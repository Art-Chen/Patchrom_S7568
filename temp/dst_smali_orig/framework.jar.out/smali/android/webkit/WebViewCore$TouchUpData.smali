.class Landroid/webkit/WebViewCore$TouchUpData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchUpData"
.end annotation


# instance fields
.field mFrame:I

.field mMoveGeneration:I

.field mNativeLayer:I

.field mNativeLayerRect:Landroid/graphics/Rect;

.field mNode:I

.field mUseLightTouch:Z

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore$TouchUpData;->mUseLightTouch:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    return-void
.end method
