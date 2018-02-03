.class public Lorg/spongycastle/cert/cmp/RevocationDetailsBuilder;
.super Ljava/lang/Object;
.source "RevocationDetailsBuilder.java"


# instance fields
.field private templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-direct {v0}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/RevocationDetailsBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    return-void
.end method
