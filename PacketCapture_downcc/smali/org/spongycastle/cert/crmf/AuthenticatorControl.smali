.class public Lorg/spongycastle/cert/crmf/AuthenticatorControl;
.super Ljava/lang/Object;
.source "AuthenticatorControl.java"

# interfaces
.implements Lorg/spongycastle/cert/crmf/Control;


# static fields
.field private static final type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cert/crmf/AuthenticatorControl;->type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
