.class public Lorg/spongycastle/cert/crmf/RegTokenControl;
.super Ljava/lang/Object;
.source "RegTokenControl.java"

# interfaces
.implements Lorg/spongycastle/cert/crmf/Control;


# static fields
.field private static final type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cert/crmf/RegTokenControl;->type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
