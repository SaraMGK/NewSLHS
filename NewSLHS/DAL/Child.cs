//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewSLHS
{
    using System;
    using NewSLHS.DAL;
    using System.Collections.Generic;
    
    public partial class Child
    {
        public int ClientInformationID { get; set; }
        public string LaborDuration { get; set; }
        public string FirstYearCommunicationLevel { get; set; }
        public int Babble { get; set; }
        public string ImitatingWordsAge { get; set; }
        public string UsingSingleWordsAge { get; set; }
        public string UsingPhrasesAge { get; set; }
        public string UsingCompleteSentencesAge { get; set; }
        public int StopOfLanguageDevelopment { get; set; }
        public string StopOfLanguageTime { get; set; }
        public string StopOfLanguageDescription { get; set; }
        public string ChildTypicalSentence { get; set; }
        public string ChildLongestSentence { get; set; }
        public int AttendingPreSchool { get; set; }
        public int TurningHeadWhenSpokenTo { get; set; }
        public int HearingProblemInClass { get; set; }
        public string PreSchoolName { get; set; }
        public string FavoriteSubject { get; set; }
        public string FavoriteSubjectReason__2__No__1__Yes__2__No_______ { get; set; }
        public string LeastFavoriteSubject { get; set; }
        public string LeastFavoriteSubjectReason { get; set; }
        public int AcademicProgressAsExpected { get; set; }
        public int SchoolSpecialServicesAvailability { get; set; }
        public string FrustrationResponse { get; set; }
        public string HandlingChildFrustration { get; set; }
        public string FamilyActivities { get; set; }
        public string Hobbies { get; set; }
        public string GettingAlongWithFamilyMembers { get; set; }
        public string PlayingWithChildren { get; set; }
        public string SetAloneAge { get; set; }
        public string walkingAge { get; set; }
        public string StandUpAge { get; set; }
        public string FoodPreference { get; set; }
    
        public virtual Client_Information Client_Information { get; set; }
    }
}
