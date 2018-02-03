.class public abstract Lorg/spongycastle/dvcs/DVCSRequestBuilder;
.super Ljava/lang/Object;
.source "DVCSRequestBuilder.java"


# instance fields
.field private final extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

.field protected final requestInformationBuilder:Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;

.field private final signedDataGen:Lorg/spongycastle/cms/CMSSignedDataGenerator;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V
    .locals 1
    .param p1, "requestInformationBuilder"    # Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/dvcs/DVCSRequestBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    .line 25
    new-instance v0, Lorg/spongycastle/cms/CMSSignedDataGenerator;

    invoke-direct {v0}, Lorg/spongycastle/cms/CMSSignedDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/dvcs/DVCSRequestBuilder;->signedDataGen:Lorg/spongycastle/cms/CMSSignedDataGenerator;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    .line 32
    return-void
.end method
