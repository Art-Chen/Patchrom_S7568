.class public Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "EDMProxyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 1
    .parameter "callType"

    .prologue
    const-string v0, "device_info"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/DeviceInfo;->addCallsCount(Ljava/lang/String;)V

    return-void
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result v0

    return v0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result v0

    return v0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result v0

    return v0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result v0

    return v0
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result v0

    return v0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .parameter "config"
    .parameter "netSSID"

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v0

    return v0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 1

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    return v0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    return v0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 1
    .parameter "pkgName"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getApplicationNotificationMode(Z)I
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationNotificationMode(Z)I

    move-result v0

    return v0
.end method

.method public getBackupData()Ljava/util/Map;
    .locals 1

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getBackupData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLog()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrowserSettingStatus(I)Z
    .locals 1
    .parameter "setting"

    .prologue
    const-string v0, "browser_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BrowserPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v0

    return v0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 1

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    return v0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 1

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    return v0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "packageName"
    .parameter "showMsg"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothLogEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 1

    .prologue
    const-string v0, "device_info"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceInfo;->isCallingCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method public isCameraEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isChangeRequested()I
    .locals 1

    .prologue
    const-string v0, "password_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    return v0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isDateTimeChangeEnabled()Z
    .locals 1

    .prologue
    const-string v0, "date_time_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DateTimePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v0

    return v0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isDesktopConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDiscoverableEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v0

    return v0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 1

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v0

    return v0
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 1
    .parameter "hwKeyId"
    .parameter "showMsg"

    .prologue
    const-string v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    return v0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowed()Z

    move-result v0

    return v0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v0

    return v0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v0

    return v0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    const-string v0, "location_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/LocationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isNFCEnabled()Z
    .locals 1

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    return v0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 1

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v0

    return v0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v0

    return v0
.end method

.method public isOutgoingMmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isOutgoingMmsAllowed()Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z

    move-result v0

    return v0
.end method

.method public isPairingEnabled()Z
    .locals 1

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isPairingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isProfileEnabled(I)Z
    .locals 1
    .parameter "setting"

    .prologue
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public isRoamingPushEnabled()Z
    .locals 1

    .prologue
    const-string v0, "roaming_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v0

    return v0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 1

    .prologue
    const-string v0, "roaming_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 1

    .prologue
    const-string v0, "device_info"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceInfo;->isSMSCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 1

    .prologue
    const-string v0, "password_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    const-string v0, "firewall_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifiAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 1

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    return v0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    const-string v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupData(Ljava/util/Map;)Z
    .locals 1
    .parameter "data"

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->setBackupData(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    const-string v0, "device_info"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DeviceInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    const-string v0, "device_info"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DeviceInfo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/DeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
