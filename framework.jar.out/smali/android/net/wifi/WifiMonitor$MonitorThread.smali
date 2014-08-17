.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 418
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 698
    const/4 v0, 0x0

    .line 701
    .local v0, connectTries:I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mP2pMonitor:Z
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 702
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant_p2p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 717
    :cond_0
    :goto_1
    return v2

    .line 707
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    .line 712
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$700(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 717
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_3
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 721
    if-nez p1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24009

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 9
    .parameter "dataString"

    .prologue
    const v8, 0x2402a

    const v7, 0x24029

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 837
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, tokens:[Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, tokensForDevAddr:[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string v3, "AP-STA-CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    array-length v2, v0

    if-ge v2, v6, :cond_1

    .line 843
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v8, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v8, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 848
    :cond_2
    aget-object v2, v0, v5

    const-string v3, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    array-length v2, v0

    if-ge v2, v6, :cond_3

    .line 850
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 852
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .parameter "dataString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 790
    const-string v2, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24015

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    const-string v2, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24016

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 794
    :cond_2
    const-string v2, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 795
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24017

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 797
    :cond_3
    const-string v2, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24019

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 799
    :cond_4
    const-string v2, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 800
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 801
    :cond_5
    const-string v2, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 802
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 803
    :cond_6
    const-string v2, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 804
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401c

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 805
    :cond_7
    const-string v2, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 806
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401d

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 807
    :cond_8
    const-string v2, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 808
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401e

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 809
    :cond_9
    const-string v2, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 810
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401f

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 812
    :cond_a
    const-string v2, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 813
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v5, :cond_0

    .line 815
    aget-object v2, v1, v4

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, nameValue:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_0

    .line 817
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24020

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 818
    .end local v0           #nameValue:[Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :cond_b
    const-string v2, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 819
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24021

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 821
    :cond_c
    const-string v2, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 822
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24022

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 824
    :cond_d
    const-string v2, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 825
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24023

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 827
    :cond_e
    const-string v2, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24024

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 17
    .parameter "dataString"

    .prologue
    .line 904
    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, dataTokens:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 907
    .local v1, BSSID:Ljava/lang/String;
    const/4 v8, -0x1

    .line 908
    .local v8, networkId:I
    const/4 v9, -0x1

    .line 909
    .local v9, newState:I
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v12, v2, v5

    .line 910
    .local v12, token:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, nameValue:[Ljava/lang/String;
    array-length v14, v7

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 909
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 915
    :cond_1
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "BSSID"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 916
    const/4 v14, 0x1

    aget-object v1, v7, v14

    .line 917
    goto :goto_1

    .line 922
    :cond_2
    const/4 v14, 0x1

    :try_start_0
    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 928
    .local v13, value:I
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 929
    move v8, v13

    goto :goto_1

    .line 923
    .end local v13           #value:I
    :catch_0
    move-exception v4

    .line 924
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 930
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #value:I
    :cond_3
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string/jumbo v15, "state"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 931
    move v9, v13

    goto :goto_1

    .line 935
    .end local v7           #nameValue:[Ljava/lang/String;
    .end local v12           #token:Ljava/lang/String;
    .end local v13           #value:I
    :cond_4
    const/4 v14, -0x1

    if-ne v9, v14, :cond_5

    .line 948
    .end local v2           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 937
    .restart local v2       #arr$:[Ljava/lang/String;
    :cond_5
    sget-object v10, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 938
    .local v10, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .local v2, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v11, v2, v5

    .line 939
    .local v11, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v14

    if-ne v14, v9, :cond_8

    .line 940
    move-object v10, v11

    .line 944
    .end local v11           #state:Landroid/net/wifi/SupplicantState;
    :cond_6
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v10, v14, :cond_7

    .line 945
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid supplicant state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v14, v8, v1, v10}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 938
    .restart local v11       #state:Landroid/net/wifi/SupplicantState;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method


# virtual methods
.method handleAssocRejectEvent()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 896
    return-void
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "remainder"

    .prologue
    const/16 v2, 0xb

    .line 736
    sparse-switch p1, :sswitch_data_0

    .line 765
    :goto_0
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mP2pMonitor:Z
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    if-ne p1, v2, :cond_0

    .line 767
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->notifyShowEapMessageDialog(Ljava/lang/String;)V

    .line 770
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    if-ne p1, v2, :cond_1

    .line 772
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->notifyShowEapMessageDialog(Ljava/lang/String;)V

    .line 776
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 781
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->tryingSSID(Ljava/lang/String;)V

    .line 784
    :cond_2
    return-void

    .line 738
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$800(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$800(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 750
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0xa -> :sswitch_4
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method handleWpsEvent(I)V
    .locals 4
    .parameter "event"

    .prologue
    .line 863
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWpsEvent - event type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    packed-switch p1, :pswitch_data_0

    .line 886
    const-string v1, "WifiMonitor"

    const-string v2, "WPS undefined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string/jumbo v0, "wps_not_defined"

    .line 888
    .local v0, wpsEvent:Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWpsEvent -There is no this event type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24033

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 892
    return-void

    .line 866
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_0
    const-string v1, "WifiMonitor"

    const-string v2, "WPS_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string/jumbo v0, "wps_success"

    .line 868
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 871
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_1
    const-string v1, "WifiMonitor"

    const-string v2, "WPS_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string/jumbo v0, "wps_fail"

    .line 873
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 876
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WifiMonitor"

    const-string v2, "WPS_OVERLAP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string/jumbo v0, "wps_overlap"

    .line 878
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 881
    .end local v0           #wpsEvent:Ljava/lang/String;
    :pswitch_3
    const-string v1, "WifiMonitor"

    const-string v2, "WPS_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string/jumbo v0, "wps_timeout"

    .line 883
    .restart local v0       #wpsEvent:Ljava/lang/String;
    goto :goto_0

    .line 864
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 423
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 435
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mP2pMonitor:Z
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Z

    move-result v6

    if-ne v6, v10, :cond_3

    .line 436
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent_p2p()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, eventStr:Ljava/lang/String;
    :goto_1
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 447
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "certificate initialization failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 450
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400e

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 428
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 695
    :cond_2
    :goto_2
    return-void

    .line 438
    :cond_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #eventStr:Ljava/lang/String;
    goto :goto_1

    .line 453
    :cond_4
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "authentication failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 456
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400d

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 459
    :cond_5
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_14

    .line 461
    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 462
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiMonitor;->notifyAuthenticationFailure(Ljava/lang/String;)V

    .line 486
    :cond_6
    :goto_3
    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    :cond_7
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 496
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, eventName:Ljava/lang/String;
    :goto_4
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 502
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_8

    .line 503
    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 504
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 512
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 513
    const/4 v0, 0x1

    .line 536
    .local v0, event:I
    :goto_5
    const-string v6, "SUCCESS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 537
    const/16 v0, 0xc

    .line 546
    :cond_9
    :goto_6
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 547
    const-string v6, "EAP-NOTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 548
    const/16 v0, 0xb

    .line 559
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 560
    const-string v6, "EAP-NOTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 561
    const/16 v0, 0xb

    .line 564
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 565
    const-string v6, "TRYING-ASSOC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 566
    const/16 v0, 0x11

    .line 570
    :cond_c
    move-object v1, v3

    .line 571
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v12, :cond_d

    const/4 v6, 0x5

    if-ne v0, v6, :cond_26

    .line 572
    :cond_d
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v10

    .line 602
    :cond_e
    :goto_7
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 603
    const/16 v6, 0xb

    if-ne v0, v6, :cond_f

    .line 604
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 605
    .local v4, ind:I
    if-eq v4, v8, :cond_f

    .line 606
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    .end local v4           #ind:I
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 611
    const/16 v6, 0xb

    if-ne v0, v6, :cond_10

    .line 612
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 613
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_10

    .line 614
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    .end local v4           #ind:I
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 619
    const/16 v6, 0x11

    if-ne v0, v6, :cond_11

    .line 620
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 621
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_11

    .line 622
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .end local v4           #ind:I
    :cond_11
    if-ne v0, v11, :cond_2d

    .line 627
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 693
    :cond_12
    :goto_8
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiMonitor;->access$602(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_0

    .line 464
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    .end local v2           #eventName:Ljava/lang/String;
    .end local v5           #nameEnd:I
    :cond_13
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 466
    :cond_14
    const-string v6, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 467
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 468
    :cond_15
    const-string v6, "P2P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 474
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 476
    :cond_16
    const-string v6, "AP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 477
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 480
    :cond_17
    const-string v6, "REQ-PASSPHRASE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 481
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x20118

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 498
    :cond_18
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$300()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #eventName:Ljava/lang/String;
    goto/16 :goto_4

    .line 514
    .restart local v5       #nameEnd:I
    :cond_19
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 515
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 516
    .end local v0           #event:I
    :cond_1a
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 517
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 518
    .end local v0           #event:I
    :cond_1b
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 519
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 520
    .end local v0           #event:I
    :cond_1c
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 521
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 522
    .end local v0           #event:I
    :cond_1d
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 523
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 524
    .end local v0           #event:I
    :cond_1e
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 525
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 526
    .end local v0           #event:I
    :cond_1f
    const-string v6, "EAP-FAILURE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 527
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 528
    .end local v0           #event:I
    :cond_20
    const-string v6, "NO-CONNECTION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 529
    const/16 v0, 0xa

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 530
    .end local v0           #event:I
    :cond_21
    const-string v6, "ASSOC-REJECT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 531
    const/16 v0, 0x10

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 533
    .end local v0           #event:I
    :cond_22
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto/16 :goto_5

    .line 538
    :cond_23
    const-string v6, "FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 539
    const/16 v0, 0xd

    goto/16 :goto_6

    .line 540
    :cond_24
    const-string v6, "OVERLAP-DETECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 541
    const/16 v0, 0xe

    goto/16 :goto_6

    .line 542
    :cond_25
    const-string v6, "TIMEOUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 543
    const/16 v0, 0xf

    goto/16 :goto_6

    .line 573
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_26
    if-eq v0, v11, :cond_27

    const/16 v6, 0x8

    if-ne v0, v6, :cond_28

    .line 574
    :cond_27
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 575
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_e

    .line 576
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 578
    .end local v4           #ind:I
    :cond_28
    const/16 v6, 0xa

    if-ne v0, v6, :cond_29

    .line 579
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 580
    :cond_29
    const/16 v6, 0xc

    if-eq v0, v6, :cond_2a

    const/16 v6, 0xe

    if-eq v0, v6, :cond_2a

    const/16 v6, 0xf

    if-eq v0, v6, :cond_2a

    const/16 v6, 0xd

    if-ne v0, v6, :cond_2b

    .line 582
    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 583
    :cond_2b
    const/16 v6, 0x10

    if-ne v0, v6, :cond_2c

    .line 584
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 586
    :cond_2c
    const/16 v6, 0x65

    if-eq v0, v6, :cond_e

    .line 595
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 596
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_e

    .line 597
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 628
    .end local v4           #ind:I
    :cond_2d
    if-ne v0, v12, :cond_2e

    .line 629
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 630
    :cond_2e
    const/4 v6, 0x6

    if-ne v0, v6, :cond_31

    .line 635
    const-string v6, "exit dummy"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 636
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mMonitorExitDummy:Z
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 637
    const-string v6, "WifiMonitor"

    const-string v7, "Skip the dummy exit message. mMonitorExitDummy is false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    :cond_2f
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24046

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 652
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 663
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 664
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$604(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 674
    :cond_30
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 675
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mMonitorExitDummy:Z
    invoke-static {v6, v9}, Landroid/net/wifi/WifiMonitor;->access$502(Landroid/net/wifi/WifiMonitor;Z)Z

    goto/16 :goto_2

    .line 677
    :cond_31
    const/16 v6, 0x8

    if-ne v0, v6, :cond_32

    .line 678
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 680
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiMonitor;->notifyAuthenticationFailure(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 685
    :cond_32
    const/16 v6, 0xc

    if-eq v0, v6, :cond_33

    const/16 v6, 0xe

    if-eq v0, v6, :cond_33

    const/16 v6, 0xf

    if-eq v0, v6, :cond_33

    const/16 v6, 0xd

    if-ne v0, v6, :cond_34

    .line 687
    :cond_33
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsEvent(I)V

    goto/16 :goto_8

    .line 688
    :cond_34
    const/16 v6, 0x10

    if-ne v0, v6, :cond_35

    .line 689
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleAssocRejectEvent()V

    goto/16 :goto_8

    .line 691
    :cond_35
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_8
.end method
