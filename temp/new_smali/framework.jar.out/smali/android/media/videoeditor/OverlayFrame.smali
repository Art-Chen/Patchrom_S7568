.class public Landroid/media/videoeditor/OverlayFrame;
.super Landroid/media/videoeditor/Overlay;
.source "OverlayFrame.java"


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFileName:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mOFHeight:I

.field private mOFWidth:I

.field private mResizedRGBHeight:I

.field private mResizedRGBWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v2, v1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V
    .locals 7
    .parameter "mediaItem"
    .parameter "overlayId"
    .parameter "bitmap"
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "mediaItem"
    .parameter "overlayId"
    .parameter "filename"
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    iput v7, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    iput v7, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method


# virtual methods
.method generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V
    .locals 34
    .parameter "mediaItemsList"
    .parameter "overlay"
    .parameter "height"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v32, p1

    .local v32, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual/range {v32 .. v32}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v27

    .local v27, renderMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    .local v25, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v28

    .local v28, resizedRGBFileHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v29

    .local v29, resizedRGBFileWidth:I
    if-nez v29, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    :cond_0
    if-nez v28, :cond_1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    :cond_1
    move/from16 v0, v29

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    move/from16 v0, v28

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, destBitmap:Landroid/graphics/Bitmap;
    new-instance v26, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v26, overlayCanvas:Landroid/graphics/Canvas;
    packed-switch v27, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rendering mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    new-instance v17, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v17, destRect:Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v31

    invoke-direct {v0, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v31, srcRect:Landroid/graphics/Rect;
    :goto_0
    sget-object v6, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v24

    .local v24, outFileName:Ljava/lang/String;
    if-eqz v24, :cond_3

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v19, fl:Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v18, dos:Ljava/io/DataOutputStream;
    move/from16 v0, p4

    new-array v5, v0, [I

    .local v5, framingBuffer:[I
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .local v16, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .local v14, array:[B
    const/4 v9, 0x0

    .local v9, tmp:I
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    move/from16 v7, p4

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    .local v20, intBuffer:Ljava/nio/IntBuffer;
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v5, v6, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v5           #framingBuffer:[I
    .end local v9           #tmp:I
    .end local v14           #array:[B
    .end local v16           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v17           #destRect:Landroid/graphics/Rect;
    .end local v18           #dos:Ljava/io/DataOutputStream;
    .end local v19           #fl:Ljava/io/FileOutputStream;
    .end local v20           #intBuffer:Ljava/nio/IntBuffer;
    .end local v24           #outFileName:Ljava/lang/String;
    .end local v31           #srcRect:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v13, v6, v7

    .local v13, aROverlayImage:F
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v12, v6, v7

    .local v12, aRCanvas:F
    cmpl-float v6, v13, v12

    if-lez v6, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int v22, v6, v7

    .local v22, newHeight:I
    const/16 v21, 0x0

    .local v21, left:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    sub-int v6, v6, v22

    div-int/lit8 v33, v6, 0x2

    .local v33, top:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v30

    .local v30, right:I
    add-int v15, v33, v22

    .end local v22           #newHeight:I
    .local v15, bottom:I
    :goto_2
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17       #destRect:Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v31

    invoke-direct {v0, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v31       #srcRect:Landroid/graphics/Rect;
    goto/16 :goto_0

    .end local v15           #bottom:I
    .end local v17           #destRect:Landroid/graphics/Rect;
    .end local v21           #left:I
    .end local v30           #right:I
    .end local v31           #srcRect:Landroid/graphics/Rect;
    .end local v33           #top:I
    :cond_4
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int v23, v6, v7

    .local v23, newWidth:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    sub-int v6, v6, v23

    div-int/lit8 v21, v6, 0x2

    .restart local v21       #left:I
    const/16 v33, 0x0

    .restart local v33       #top:I
    add-int v30, v21, v23

    .restart local v30       #right:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    .restart local v15       #bottom:I
    goto :goto_2

    .end local v12           #aRCanvas:F
    .end local v13           #aROverlayImage:F
    .end local v15           #bottom:I
    .end local v21           #left:I
    .end local v23           #newWidth:I
    .end local v30           #right:I
    .end local v33           #top:I
    :pswitch_2
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v13, v6, v7

    .restart local v13       #aROverlayImage:F
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v12, v6, v7

    .restart local v12       #aRCanvas:F
    cmpg-float v6, v13, v12

    if-gez v6, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int v22, v6, v7

    .restart local v22       #newHeight:I
    const/16 v21, 0x0

    .restart local v21       #left:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v6, v22

    div-int/lit8 v33, v6, 0x2

    .restart local v33       #top:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    .restart local v30       #right:I
    add-int v15, v33, v22

    .end local v22           #newHeight:I
    .restart local v15       #bottom:I
    :goto_3
    new-instance v31, Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move/from16 v1, v21

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v31       #srcRect:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_0

    .end local v15           #bottom:I
    .end local v17           #destRect:Landroid/graphics/Rect;
    .end local v21           #left:I
    .end local v30           #right:I
    .end local v31           #srcRect:Landroid/graphics/Rect;
    .end local v33           #top:I
    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    div-int v23, v6, v7

    .restart local v23       #newWidth:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v6, v23

    div-int/lit8 v21, v6, 0x2

    .restart local v21       #left:I
    const/16 v33, 0x0

    .restart local v33       #top:I
    add-int v30, v21, v23

    .restart local v30       #right:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .restart local v15       #bottom:I
    goto :goto_3

    .end local v12           #aRCanvas:F
    .end local v13           #aROverlayImage:F
    .end local v15           #bottom:I
    .end local v21           #left:I
    .end local v23           #newWidth:I
    .end local v30           #right:I
    .end local v33           #top:I
    .restart local v5       #framingBuffer:[I
    .restart local v9       #tmp:I
    .restart local v14       #array:[B
    .restart local v16       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v17       #destRect:Landroid/graphics/Rect;
    .restart local v18       #dos:Ljava/io/DataOutputStream;
    .restart local v19       #fl:Ljava/io/FileOutputStream;
    .restart local v24       #outFileName:Ljava/lang/String;
    .restart local v31       #srcRect:Landroid/graphics/Rect;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    .end local v4           #destBitmap:Landroid/graphics/Bitmap;
    .end local v5           #framingBuffer:[I
    .end local v9           #tmp:I
    .end local v14           #array:[B
    .end local v16           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v17           #destRect:Landroid/graphics/Rect;
    .end local v18           #dos:Ljava/io/DataOutputStream;
    .end local v19           #fl:Ljava/io/FileOutputStream;
    .end local v24           #outFileName:Ljava/lang/String;
    .end local v26           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v31           #srcRect:Landroid/graphics/Rect;
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getBitmapImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    return-object v0
.end method

.method getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method getOverlayFrameHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    return v0
.end method

.method getOverlayFrameWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    return v0
.end method

.method getResizedRGBSizeHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return v0
.end method

.method getResizedRGBSizeWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    return v0
.end method

.method invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method invalidateGeneratedFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method save(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Overlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v2, out:Ljava/io/FileOutputStream;
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Overlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".rgb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v1

    .local v1, nativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeHelperGetAspectRatio()I

    move-result v4

    invoke-static {v4}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v3

    .local v3, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    .local v0, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v5, p0, v6, v4}, Landroid/media/videoeditor/OverlayFrame;->generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V

    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/videoeditor/OverlayFrame;->mStartTimeMs:J

    iget-wide v3, p0, Landroid/media/videoeditor/OverlayFrame;->mDurationMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    return-void
.end method

.method setFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-void
.end method

.method setOverlayFrameHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    return-void
.end method

.method setOverlayFrameWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    return-void
.end method

.method setResizedRGBSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    iput p2, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method
