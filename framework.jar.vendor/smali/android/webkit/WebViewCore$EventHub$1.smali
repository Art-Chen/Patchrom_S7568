.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1657
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 91
    .parameter "msg"

    .prologue
    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2732
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$1500(Landroid/webkit/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6d

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 1686
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1708
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRevealSelection()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1688
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1692
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDrawLayers()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1698
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v4

    .line 1699
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$1802(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$1402(Landroid/webkit/WebViewCore;I)I

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1704
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1712
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1713
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v68, v0

    .line 1714
    .local v68, nodePointer:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move/from16 v0, v68

    #calls: Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;
    invoke-static {v2, v4, v0}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v62

    .line 1716
    .local v62, label:Ljava/lang/String;
    if-eqz v62, :cond_0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1717
    const-string v2, "\n"

    const-string v4, ""

    move-object/from16 v0, v62

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7d

    const/4 v6, 0x0

    move/from16 v0, v68

    move-object/from16 v1, v62

    invoke-static {v2, v4, v0, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1726
    .end local v62           #label:Ljava/lang/String;
    .end local v68           #nodePointer:I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1731
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 1732
    const/16 v90, 0x0

    .line 1736
    .local v90, xPercent:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v90

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V
    invoke-static {v2, v0, v4}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_0

    .line 1734
    .end local v90           #xPercent:F
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v90

    .restart local v90       #xPercent:F
    goto :goto_1

    .line 1740
    .end local v90           #xPercent:F
    :sswitch_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1741
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1742
    .local v71, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v6, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1747
    .end local v71           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1748
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1749
    .local v71, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v6, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v6}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 1753
    .end local v71           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    .line 1754
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1755
    .local v63, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v63

    iget-object v3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1756
    .local v3, baseUrl:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1757
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v55

    .line 1758
    .local v55, i:I
    if-lez v55, :cond_4

    .line 1766
    const/4 v2, 0x0

    move/from16 v0, v55

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v82

    .line 1767
    .local v82, scheme:Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ftp"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "about"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "javascript"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v82

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1775
    .end local v55           #i:I
    .end local v82           #scheme:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v63

    iget-object v4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v6, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v7, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1788
    .end local v3           #baseUrl:Ljava/lang/String;
    .end local v63           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1793
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    .line 1797
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1801
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1805
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1809
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    #calls: Landroid/webkit/WebViewCore;->nativeClick(IIZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    .line 1813
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeClick(IIZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    .line 1817
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$ViewSizeData;

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 1823
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/graphics/Point;

    .line 1824
    .local v73, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v73

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v73

    iget v10, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v6, v2, v9, v10}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;IZII)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1830
    .end local v73           #pt:Landroid/graphics/Point;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v89, v0

    check-cast v89, Ljava/lang/String;

    .line 1831
    .local v89, word:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v89

    #calls: Landroid/webkit/WebViewCore;->nativeUnmarkWord(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1835
    .end local v89           #word:Ljava/lang/String;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSpellingOfWordAtPosition(II)Z
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;II)Z

    move-result v60

    .line 1836
    .local v60, isWordMisspelled:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v60

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setSpellCheckResult(Z)V

    goto/16 :goto_0

    .line 1841
    .end local v60           #isWordMisspelled:Z
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Rect;

    .line 1842
    .local v74, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v74

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v74

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->height()I

    move-result v10

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1849
    .end local v74           #r:Landroid/graphics/Rect;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_7

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1854
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRecalcWidthAndForceLayout()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1862
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1867
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$3700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$3602(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$3700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1870
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1871
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1872
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x6f

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1875
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1880
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$3700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$3600(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1881
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1882
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1883
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x70

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1889
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePause()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1893
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeResume()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1897
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;Z)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1903
    :sswitch_1c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1909
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1910
    .local v29, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 1911
    .local v72, params:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1912
    .local v14, count:I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Landroid/webkit/WebView$CursorDirection;

    sget-object v4, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    if-ne v2, v4, :cond_9

    const/16 v57, 0x1

    .line 1913
    .local v57, isBefore:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move/from16 v0, v57

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;
    invoke-static {v2, v14, v0}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v85

    .line 1915
    .local v85, str:Ljava/lang/String;
    monitor-enter v29

    .line 1917
    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1918
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1920
    monitor-exit v29

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1912
    .end local v57           #isBefore:Z
    .end local v85           #str:Ljava/lang/String;
    :cond_9
    const/16 v57, 0x0

    goto :goto_3

    .line 1927
    .end local v14           #count:I
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v72           #params:[Ljava/lang/Object;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1932
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1936
    .local v24, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v80

    .line 1938
    .local v80, result:Landroid/graphics/Point;
    monitor-enter v24

    .line 1940
    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1941
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1943
    monitor-exit v24

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1948
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v80           #result:Landroid/graphics/Point;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffsetImage()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1954
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1955
    .restart local v29       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v85

    .line 1957
    .restart local v85       #str:Ljava/lang/String;
    monitor-enter v29

    .line 1959
    :try_start_3
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1960
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1962
    monitor-exit v29

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1968
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v85           #str:Ljava/lang/String;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    .line 1969
    .restart local v29       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v85

    .line 1971
    .restart local v85       #str:Ljava/lang/String;
    monitor-enter v29

    .line 1973
    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1974
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    .line 1976
    monitor-exit v29

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 1981
    .end local v29           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v85           #str:Ljava/lang/String;
    :sswitch_23
    const/16 v58, 0x0

    .line 1982
    .local v58, isBodyEmpty:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 1983
    .local v27, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)Z

    move-result v58

    .line 1985
    monitor-enter v27

    .line 1987
    :try_start_5
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1988
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 1990
    monitor-exit v27

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 1995
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v58           #isBodyEmpty:Z
    :sswitch_24
    const/16 v84, -0x1

    .line 1996
    .local v84, selectedType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 1997
    .local v28, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentSelectionType()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)I

    move-result v84

    .line 1999
    monitor-enter v28

    .line 2001
    :try_start_6
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2002
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2004
    monitor-exit v28

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 2011
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84           #selectedType:I
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 2012
    .local v25, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2013
    .restart local v72       #params:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v52, v72, v2

    check-cast v52, Ljava/lang/Boolean;

    .line 2014
    .local v52, giveContentRect:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v42

    .line 2016
    .local v42, cursurRect:Landroid/graphics/Rect;
    monitor-enter v25

    .line 2018
    :try_start_7
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2019
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 2021
    monitor-exit v25

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 2028
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v42           #cursurRect:Landroid/graphics/Rect;
    .end local v52           #giveContentRect:Ljava/lang/Boolean;
    .end local v72           #params:[Ljava/lang/Object;
    :sswitch_26
    const/16 v59, 0x0

    .line 2029
    .local v59, isCommandSuces:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebView$CmdVal;

    .line 2030
    .local v39, cmdVal:Landroid/webkit/WebView$CmdVal;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v6, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 2031
    monitor-enter v39

    .line 2033
    :try_start_8
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->notify()V

    .line 2035
    monitor-exit v39

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v39
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 2040
    .end local v39           #cmdVal:Landroid/webkit/WebView$CmdVal;
    .end local v59           #isCommandSuces:Z
    :sswitch_27
    const/16 v34, 0x0

    .line 2041
    .local v34, canUndo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2042
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanUndo()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;)Z

    move-result v34

    .line 2043
    monitor-enter v27

    .line 2045
    :try_start_9
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2046
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2048
    monitor-exit v27

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 2054
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v34           #canUndo:Z
    :sswitch_28
    const/16 v33, 0x0

    .line 2055
    .local v33, canRedo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2056
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanRedo()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;)Z

    move-result v33

    .line 2057
    monitor-enter v27

    .line 2059
    :try_start_a
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2060
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2062
    monitor-exit v27

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 2067
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v33           #canRedo:Z
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2071
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v88, v0

    check-cast v88, Ljava/lang/String;

    .line 2072
    .local v88, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v88

    #calls: Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2079
    .end local v88           #url:Ljava/lang/String;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2083
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 2084
    .local v26, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v85

    .line 2086
    .local v85, str:Landroid/webkit/WebHTMLMarkupData;
    monitor-enter v26

    .line 2088
    :try_start_b
    move-object/from16 v0, v26

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2089
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2091
    monitor-exit v26

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 2096
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    .end local v85           #str:Landroid/webkit/WebHTMLMarkupData;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    const/4 v2, 0x1

    :goto_4
    #calls: Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 2100
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2101
    .local v76, recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v76

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v6, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;II)V

    .line 2102
    monitor-enter v76

    .line 2104
    :try_start_c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2106
    monitor-exit v76

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v76
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 2113
    .end local v76           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2118
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2119
    .restart local v76       #recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v76

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v6, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;II)V

    .line 2120
    monitor-enter v76

    .line 2122
    :try_start_d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2124
    monitor-exit v76

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v76
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 2129
    .end local v76           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v48

    .line 2130
    .local v48, factor:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move/from16 v0, v48

    #calls: Landroid/webkit/WebViewCore;->nativeSetPageZoom(F)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;F)V

    goto/16 :goto_0

    .line 2135
    .end local v48           #factor:F
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2139
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2140
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v80, 0x0

    .line 2141
    .local v80, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionNone()Z
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;)Z

    move-result v80

    .line 2143
    monitor-enter v27

    .line 2144
    :try_start_e
    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2145
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2146
    monitor-exit v27

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 2154
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v80           #result:Z
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2158
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2163
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2167
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2171
    :sswitch_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2172
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v80, -0x1

    .line 2173
    .local v80, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;)I

    move-result v80

    .line 2175
    monitor-enter v28

    .line 2177
    :try_start_f
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2178
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2180
    monitor-exit v28

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 2185
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v80           #result:I
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$EditableParams;

    .line 2186
    .local v46, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v6, v0, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    move-object/from16 v0, v46

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    #calls: Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v80

    .line 2187
    .local v80, result:Landroid/graphics/Point;
    monitor-enter v46

    .line 2188
    :try_start_10
    move-object/from16 v0, v80

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    .line 2189
    move-object/from16 v0, v80

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    .line 2190
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->notify()V

    .line 2191
    monitor-exit v46

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v46
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    .line 2196
    .end local v46           #editableParams:Landroid/webkit/WebViewCore$EditableParams;
    .end local v80           #result:Landroid/graphics/Point;
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectedClosestWord()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2201
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2202
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v80, 0x0

    .line 2203
    .local v80, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetStateInRichlyEditableText()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)I

    move-result v80

    .line 2205
    monitor-enter v28

    .line 2206
    :try_start_11
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2207
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2208
    monitor-exit v28

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v28
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    .line 2213
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v80           #result:I
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 2214
    .local v40, command:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v40

    #calls: Landroid/webkit/WebViewCore;->nativeinsertImageContent(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2219
    .end local v40           #command:Ljava/lang/String;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeresizeImage(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2225
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2226
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v50, 0x0

    .line 2227
    .local v50, fontSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativegetCurrentFontSize()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;)I

    move-result v50

    .line 2228
    monitor-enter v28

    .line 2229
    :try_start_12
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2230
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2231
    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    .line 2236
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v50           #fontSize:I
    :sswitch_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    .line 2237
    .restart local v28       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v51, 0x0

    .line 2238
    .local v51, fontValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativegetCurrentFontValue()I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;)I

    move-result v51

    .line 2239
    monitor-enter v28

    .line 2240
    :try_start_13
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2241
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2242
    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    .line 2247
    .end local v28           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v51           #fontValue:I
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitActionBarDraw()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2252
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    .line 2253
    .restart local v27       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v80, 0x0

    .line 2254
    .local v80, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeCheckEndOfWordAtPosition(II)Z
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;II)Z

    move-result v80

    .line 2256
    monitor-enter v27

    .line 2257
    :try_start_14
    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2258
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2259
    monitor-exit v27

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    .line 2263
    .end local v27           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v80           #result:Z
    :sswitch_42
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_b

    .line 2264
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2267
    :cond_b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 2272
    :sswitch_43
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_d

    .line 2273
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2276
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/util/Map;

    .line 2277
    .local v64, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v64

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v64

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2282
    .end local v64           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_6
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 2286
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_0

    .line 2291
    :sswitch_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 2292
    .local v78, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v78

    iget-object v7, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v78

    iget v9, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v78

    iget v10, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V
    invoke-static/range {v4 .. v10}, Landroid/webkit/WebViewCore;->access$8200(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 2298
    .end local v78           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_47
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$JSKeyData;

    .line 2299
    .local v61, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v47, v0

    .line 2300
    .local v47, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 2301
    .local v7, keyCode:I
    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    .line 2302
    .local v8, keyValue:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 2303
    .local v5, generation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isDown()Z

    move-result v9

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v11

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v12

    #calls: Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v12}, Landroid/webkit/WebViewCore;->access$8300(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    .line 2314
    .end local v5           #generation:I
    .end local v7           #keyCode:I
    .end local v8           #keyValue:I
    .end local v47           #evt:Landroid/view/KeyEvent;
    .end local v61           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$CursorData;

    .line 2315
    .local v31, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v31

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2320
    .end local v31           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_49
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2323
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/SslCertLookupTable;->clear()V

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2326
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_0

    .line 2331
    :sswitch_4a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Landroid/webkit/WebViewCore$TouchUpData;

    .line 2332
    .local v87, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, v87

    iget v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    if-eqz v2, :cond_10

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v87

    iget v4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    move-object/from16 v0, v87

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V

    .line 2336
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v87

    iget v10, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move-object/from16 v0, v87

    iget v11, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move-object/from16 v0, v87

    iget v12, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move-object/from16 v0, v87

    iget v13, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move-object/from16 v0, v87

    iget v14, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move-object/from16 v0, v87

    iget-boolean v15, v0, Landroid/webkit/WebViewCore$TouchUpData;->mUseLightTouch:Z

    #calls: Landroid/webkit/WebViewCore;->nativeTouchUp(IIIIIZ)V
    invoke-static/range {v9 .. v15}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;IIIIIZ)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewCore$EventHub;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v6, 0x75

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2346
    move-object/from16 v0, v87

    iget v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    if-eqz v2, :cond_0

    .line 2347
    move-object/from16 v0, v87

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2348
    move-object/from16 v0, v87

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v87

    iget v4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    move-object/from16 v0, v87

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 2356
    .end local v87           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v86, v0

    check-cast v86, Landroid/webkit/WebViewCore$TouchEventData;

    .line 2357
    .local v86, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    array-length v14, v2

    .line 2358
    .restart local v14       #count:I
    new-array v12, v14, [I

    .line 2359
    .local v12, xArray:[I
    new-array v13, v14, [I

    .line 2360
    .local v13, yArray:[I
    const/16 v30, 0x0

    .local v30, c:I
    :goto_7
    move/from16 v0, v30

    if-ge v0, v14, :cond_11

    .line 2361
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v12, v30

    .line 2362
    move-object/from16 v0, v86

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v13, v30

    .line 2360
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 2364
    :cond_11
    move-object/from16 v0, v86

    iget v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    if-eqz v2, :cond_12

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v86

    iget v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v86

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V

    .line 2368
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v86

    iget v10, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v86

    iget-object v11, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v86

    iget v15, v0, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    move-object/from16 v0, v86

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move/from16 v16, v0

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z
    invoke-static/range {v9 .. v16}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;I[I[I[IIII)Z

    move-result v2

    move-object/from16 v0, v86

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    .line 2370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v4, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v86

    iget v9, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v86

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v86

    invoke-static {v4, v6, v9, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2377
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 2378
    const-string/jumbo v2, "webcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TOUCH_EVENT handled in webcore  ted.mSequence = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-wide v9, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeResult  = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeLayer = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ted.mNativeLayerRect = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2370
    :cond_13
    const/4 v2, 0x0

    goto :goto_8

    .line 2389
    .end local v12           #xArray:[I
    .end local v13           #yArray:[I
    .end local v14           #count:I
    .end local v30           #c:I
    .end local v86           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_14

    const/4 v2, 0x1

    :goto_9
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 2393
    :sswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 2394
    .local v61, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v61

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, v61

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    invoke-virtual {v2, v4, v6, v9}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2399
    .end local v61           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 2400
    .restart local v61       #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2405
    .end local v61           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2410
    :sswitch_50
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2414
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/webkit/WebViewCore$CursorData;

    .line 2415
    .local v49, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v49

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v49

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$9200(Landroid/webkit/WebViewCore;II)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2422
    .end local v49           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$CursorData;

    .line 2423
    .local v41, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v41

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$9400(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 2428
    .end local v41           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 2429
    .local v32, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v32

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v32

    iget v10, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V
    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$9500(Landroid/webkit/WebViewCore;IIII)V

    .line 2432
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2438
    .end local v32           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/os/Message;

    .line 2439
    .local v54, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "url"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$9700(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "title"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$9800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "src"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;
    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$9900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2450
    .end local v54           #hrefMsg:Landroid/os/Message;
    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10000(Landroid/webkit/WebViewCore;)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->postInvalidate()V

    .line 2455
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2460
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10000(Landroid/webkit/WebViewCore;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->postInvalidate()V

    .line 2465
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateText()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2470
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/os/Message;

    .line 2471
    .local v56, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v56

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2473
    invoke-virtual/range {v56 .. v56}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2471
    :cond_17
    const/4 v2, 0x0

    goto :goto_a

    .line 2477
    .end local v56           #imageResult:Landroid/os/Message;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 2479
    .local v45, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v4, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v45

    iget v6, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$10200(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 2484
    .end local v45           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_59
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2488
    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$10400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v66

    .line 2490
    .local v66, modifiedSelectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    move-object/from16 v0, v66

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2495
    .end local v66           #modifiedSelectionString:Ljava/lang/String;
    :sswitch_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/util/SparseBooleanArray;

    .line 2497
    .local v35, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 2498
    .local v37, choicesSize:I
    move/from16 v0, v37

    new-array v0, v0, [Z

    move-object/from16 v36, v0

    .line 2499
    .local v36, choicesArray:[Z
    const/16 v30, 0x0

    .restart local v30       #c:I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_18

    .line 2500
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v36, v30

    .line 2499
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 2502
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    move/from16 v1, v37

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V
    invoke-static {v2, v0, v1}, Landroid/webkit/WebViewCore;->access$10500(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_0

    .line 2507
    .end local v30           #c:I
    .end local v35           #choices:Landroid/util/SparseBooleanArray;
    .end local v36           #choicesArray:[Z
    .end local v37           #choicesSize:I
    :sswitch_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2511
    :sswitch_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2515
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_19

    const/4 v2, 0x1

    :goto_c
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$10800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_c

    .line 2519
    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1a

    const/4 v2, 0x1

    :goto_d
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$10900(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    .line 2523
    :sswitch_60
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpNavTree()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2527
    :sswitch_61
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2531
    :sswitch_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$11200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2535
    :sswitch_63
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2539
    :sswitch_64
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v81, v0

    check-cast v81, Landroid/webkit/WebView$SaveWebArchiveMessage;

    .line 2541
    .local v81, saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v81

    iget-object v4, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v81

    iget-boolean v6, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mAutoname:Z

    #calls: Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$11300(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v81

    iput-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x84

    move-object/from16 v0, v81

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2548
    .end local v81           #saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    :sswitch_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 2550
    .local v44, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v44

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$11400(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2556
    .end local v44           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_66
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    .line 2558
    .local v70, notifydata:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v70

    iget-object v4, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v70

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$11500(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2563
    .end local v70           #notifydata:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    :sswitch_67
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Landroid/webkit/WebViewCore$InvokeEventparams;

    .line 2565
    .local v79, responsedata:Landroid/webkit/WebViewCore$InvokeEventparams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v79

    iget-object v4, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    move-object/from16 v0, v79

    iget v6, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mPointer:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$11600(Landroid/webkit/WebViewCore;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2569
    .end local v79           #responsedata:Landroid/webkit/WebViewCore$InvokeEventparams;
    :sswitch_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkit/WebViewCore$InvokeNotifyID;

    .line 2571
    .local v69, notifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    if-eqz v69, :cond_0

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v69

    iget v4, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mnotificationID:I

    move-object/from16 v0, v69

    iget v6, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mcounter:I

    #calls: Landroid/webkit/WebViewCore;->nativeNotificationIDback(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$11700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2577
    .end local v69           #notifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    :sswitch_69
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSplitContent(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11800(Landroid/webkit/WebViewCore;I)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 2580
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11902(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_0

    .line 2587
    :sswitch_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x1

    #setter for: Landroid/webkit/WebViewCore;->mClearedContent:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$12002(Landroid/webkit/WebViewCore;Z)Z

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeClearContent()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$12100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2592
    :sswitch_6b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2596
    :sswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$12200(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2600
    :sswitch_6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/WebViewCore$MotionUpData;

    .line 2601
    .local v67, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v67

    iget v4, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move-object/from16 v0, v67

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move-object/from16 v0, v67

    iget-object v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$12300(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10000(Landroid/webkit/WebViewCore;)V

    .line 2606
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x77

    move-object/from16 v0, v67

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move-object/from16 v0, v67

    iget v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v65

    .line 2609
    .local v65, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, v65

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2615
    .end local v65           #message:Landroid/os/Message;
    .end local v67           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$12400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2619
    :sswitch_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$12500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2623
    :sswitch_70
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;)I

    move-result v4

    #calls: Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$12600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2627
    :sswitch_71
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_1c

    .line 2628
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2631
    :cond_1c
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 2636
    :sswitch_72
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$TouchHighlightData;

    .line 2637
    .local v43, d:Landroid/webkit/WebViewCore$TouchHighlightData;
    move-object/from16 v0, v43

    iget v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    if-eqz v2, :cond_1d

    .line 2638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, v43

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V

    .line 2641
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    move-object/from16 v0, v43

    iget v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    move-object/from16 v0, v43

    iget v9, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    #calls: Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$12700(Landroid/webkit/WebViewCore;III)V

    .line 2643
    move-object/from16 v0, v43

    iget v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    if-eqz v2, :cond_0

    .line 2644
    move-object/from16 v0, v43

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2645
    move-object/from16 v0, v43

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, v43

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v9, 0x1

    #calls: Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 2653
    .end local v43           #d:Landroid/webkit/WebViewCore$TouchHighlightData;
    :sswitch_73
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$12800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 2657
    :sswitch_74
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$12900(Landroid/webkit/WebViewCore;I)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x86

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2665
    :sswitch_75
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/webkit/WebViewCore$CopyParams;

    .line 2666
    .local v72, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move/from16 v16, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move/from16 v17, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move/from16 v18, v0

    move-object/from16 v0, v72

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v19, v0

    move-object/from16 v0, v72

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v20, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v22, v0

    #calls: Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V
    invoke-static/range {v15 .. v22}, Landroid/webkit/WebViewCore;->access$13000(Landroid/webkit/WebViewCore;IIIZZFI)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v72

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2674
    .end local v72           #params:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_76
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Landroid/webkit/WebViewCore$CopyParams;

    .line 2675
    .local v83, selAllValue:Landroid/webkit/WebViewCore$CopyParams;
    const/16 v53, 0x0

    .line 2676
    .local v53, haveselection:I
    move-object/from16 v0, v83

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    if-nez v2, :cond_1e

    .line 2677
    const/16 v53, 0x1

    .line 2679
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v83

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v83

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    const/4 v9, 0x0

    move/from16 v0, v53

    #calls: Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V
    invoke-static {v2, v4, v6, v0, v9}, Landroid/webkit/WebViewCore;->access$13100(Landroid/webkit/WebViewCore;IIII)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2684
    .end local v53           #haveselection:I
    .end local v83           #selAllValue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_77
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$CopyParams;

    .line 2685
    .local v23, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move-object/from16 v0, v23

    iget v10, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move-object/from16 v0, v23

    iget-boolean v11, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    #calls: Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z
    invoke-static {v4, v6, v9, v10, v11}, Landroid/webkit/WebViewCore;->access$13200(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 2691
    .end local v23           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_78
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$CopyParams;

    .line 2692
    .local v38, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v38

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V
    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$13300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 2697
    .end local v38           #clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_79
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2701
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2707
    :sswitch_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->applyreadability(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$13400(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 2708
    .local v75, readerData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2712
    .end local v75           #readerData:Ljava/lang/String;
    :sswitch_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewCore;->loadinitialJs(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$13500(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 2713
    .local v77, recogData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2718
    .end local v77           #recogData:Ljava/lang/String;
    :sswitch_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->nativeSuspendJS()V

    goto/16 :goto_0

    .line 2721
    :sswitch_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->nativeResumeJS()V

    goto/16 :goto_0

    .line 2728
    :sswitch_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewCore;->nativeSendColorPickerChoice(I)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$13600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1686
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_4
        0x62 -> :sswitch_5
        0x63 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_10
        0x6a -> :sswitch_15
        0x6b -> :sswitch_11
        0x6c -> :sswitch_16
        0x6d -> :sswitch_17
        0x6e -> :sswitch_18
        0x6f -> :sswitch_44
        0x70 -> :sswitch_45
        0x71 -> :sswitch_59
        0x72 -> :sswitch_46
        0x73 -> :sswitch_47
        0x74 -> :sswitch_14
        0x75 -> :sswitch_55
        0x76 -> :sswitch_f
        0x77 -> :sswitch_42
        0x78 -> :sswitch_57
        0x79 -> :sswitch_e
        0x7a -> :sswitch_58
        0x7b -> :sswitch_5b
        0x7c -> :sswitch_5c
        0x7d -> :sswitch_6b
        0x7e -> :sswitch_5d
        0x7f -> :sswitch_51
        0x80 -> :sswitch_48
        0x82 -> :sswitch_1
        0x84 -> :sswitch_8
        0x85 -> :sswitch_69
        0x86 -> :sswitch_6a
        0x87 -> :sswitch_52
        0x88 -> :sswitch_53
        0x89 -> :sswitch_54
        0x8a -> :sswitch_4d
        0x8b -> :sswitch_9
        0x8c -> :sswitch_4a
        0x8d -> :sswitch_4b
        0x8e -> :sswitch_4c
        0x8f -> :sswitch_19
        0x90 -> :sswitch_1a
        0x91 -> :sswitch_1b
        0x92 -> :sswitch_6d
        0x93 -> :sswitch_64
        0x94 -> :sswitch_2
        0x95 -> :sswitch_4e
        0x96 -> :sswitch_49
        0x97 -> :sswitch_56
        0xa0 -> :sswitch_4f
        0xa1 -> :sswitch_50
        0xaa -> :sswitch_5e
        0xab -> :sswitch_5f
        0xac -> :sswitch_60
        0xad -> :sswitch_61
        0xae -> :sswitch_62
        0xaf -> :sswitch_63
        0xb4 -> :sswitch_65
        0xb5 -> :sswitch_6c
        0xb6 -> :sswitch_6e
        0xb7 -> :sswitch_43
        0xb8 -> :sswitch_71
        0xbb -> :sswitch_72
        0xbe -> :sswitch_5a
        0xbf -> :sswitch_73
        0xc0 -> :sswitch_74
        0xc2 -> :sswitch_79
        0xc3 -> :sswitch_6f
        0xc4 -> :sswitch_70
        0xc5 -> :sswitch_66
        0xc6 -> :sswitch_67
        0xc7 -> :sswitch_68
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_7e
        0xd2 -> :sswitch_75
        0xd3 -> :sswitch_78
        0xd4 -> :sswitch_77
        0xd5 -> :sswitch_75
        0xd8 -> :sswitch_76
        0xd9 -> :sswitch_7a
        0xda -> :sswitch_7b
        0xe6 -> :sswitch_7c
        0xe7 -> :sswitch_7d
        0xf0 -> :sswitch_12
        0xf1 -> :sswitch_13
        0x1fc -> :sswitch_1c
        0x1fd -> :sswitch_1d
        0x1fe -> :sswitch_2e
        0x1ff -> :sswitch_1e
        0x200 -> :sswitch_22
        0x201 -> :sswitch_1f
        0x202 -> :sswitch_21
        0x203 -> :sswitch_26
        0x204 -> :sswitch_2a
        0x205 -> :sswitch_2b
        0x206 -> :sswitch_2c
        0x207 -> :sswitch_2d
        0x209 -> :sswitch_25
        0x20b -> :sswitch_32
        0x20c -> :sswitch_33
        0x20d -> :sswitch_27
        0x20f -> :sswitch_28
        0x211 -> :sswitch_29
        0x212 -> :sswitch_23
        0x213 -> :sswitch_24
        0x214 -> :sswitch_35
        0x215 -> :sswitch_36
        0x217 -> :sswitch_38
        0x218 -> :sswitch_39
        0x219 -> :sswitch_34
        0x21a -> :sswitch_37
        0x21b -> :sswitch_30
        0x21c -> :sswitch_2f
        0x21d -> :sswitch_20
        0x21e -> :sswitch_3b
        0x21f -> :sswitch_40
        0x220 -> :sswitch_3c
        0x221 -> :sswitch_3d
        0x222 -> :sswitch_3e
        0x223 -> :sswitch_3a
        0x224 -> :sswitch_41
        0x225 -> :sswitch_3f
        0x228 -> :sswitch_31
    .end sparse-switch
.end method
