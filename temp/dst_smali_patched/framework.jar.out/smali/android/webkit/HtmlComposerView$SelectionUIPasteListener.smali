.class Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 21
    .parameter "htmlFragment"
    .parameter "dataType"

    .prologue
    const-string v17, "HtmlComposerView"

    const-string v18, "SelectionUIPasteListener onPaste"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v17, "HtmlComposerView"

    const-string v18, "SelectionUIPasteListener onPaste htmlFragment == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v17, 0x3

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, imageUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .local v3, absoluteFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, dstFilePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, mFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, originalFile:Ljava/io/File;
    const-wide/32 v17, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_1

    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### originalFile.length() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v15, 0x0

    .local v15, src:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v3, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### htmlFragment : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v12, originWidth:I
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local v11, originHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$500(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$600(Landroid/webkit/HtmlComposerView;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$500(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .local v16, width:I
    mul-int v17, v11, v16

    div-int v7, v17, v12

    .local v7, height:I
    const-wide/32 v17, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_c

    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Big Data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_3

    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v14, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-gtz v17, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_a

    :cond_2
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### htmlFragment : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v16, :cond_d

    move/from16 v0, v16

    if-le v0, v12, :cond_5

    move/from16 v16, v12

    move v7, v11

    :cond_5
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;)F

    move-result v19

    const/high16 v20, 0x42c8

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-gez v17, :cond_6

    mul-int/lit8 v17, v16, 0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    mul-int/lit8 v17, v7, 0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v7}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v15           #src:Landroid/graphics/Bitmap;
    .end local v16           #width:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget v18, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .restart local v3       #absoluteFilePath:Ljava/lang/String;
    .restart local v5       #dstFilePath:Ljava/lang/String;
    .restart local v8       #imageUri:Landroid/net/Uri;
    .restart local v9       #mFile:Ljava/io/File;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #originalFile:Ljava/io/File;
    .restart local v15       #src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    :cond_8
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #originHeight:I
    .restart local v12       #originWidth:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$600(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    goto/16 :goto_1

    .restart local v7       #height:I
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    .restart local v16       #width:I
    :cond_a
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_b

    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_b
    const/16 v17, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$700(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const-string v17, "HtmlComposerView"

    const-string v18, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/io/IOException;
    :cond_c
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$700(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const-string v17, "HtmlComposerView"

    const-string v18, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v15           #src:Landroid/graphics/Bitmap;
    .end local v16           #width:I
    :cond_e
    const/16 v17, 0x4

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    const-string v17, "(?i)(?:line)[-|\\s]?(height)[\\s]?[\\=|\\:][\\s]?[s0-9][^;|\\\"]+ [\\s]?"

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_4
    const-string v17, "<p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "<p"

    const-string v18, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v4, b:Ljava/lang/StringBuilder;
    const-string v17, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x3

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_f
    const-string v17, "<div"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10

    const-string v17, "<div"

    const-string v18, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v4       #b:Ljava/lang/StringBuilder;
    const-string v17, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x5

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p1

    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const v17, 0x102040a

    sput v17, Landroid/webkit/HtmlComposerView;->operSel:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "<.*?>"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3

    :catch_3
    move-exception v6

    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const v17, 0x102040a

    sput v17, Landroid/webkit/HtmlComposerView;->operSel:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "<.*?>"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3
.end method
