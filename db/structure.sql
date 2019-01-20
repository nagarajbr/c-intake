SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_rights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE access_rights (
    id bigint NOT NULL,
    role_id bigint,
    ruby_element_id bigint,
    access character(2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: access_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE access_rights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: access_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE access_rights_id_seq OWNED BY access_rights.id;


--
-- Name: account_numbers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE account_numbers (
    id bigint NOT NULL,
    account_number integer NOT NULL,
    representative_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: account_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE account_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: account_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE account_numbers_id_seq OWNED BY account_numbers.id;


--
-- Name: action_plan_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plan_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    employment_readiness_plan_id integer,
    client_id integer,
    household_id integer,
    program_unit_id integer,
    action_plan_type integer,
    action_plan_status integer,
    required_participation_hours integer,
    start_date date,
    end_date date,
    client_agreement_date date,
    notes text,
    action_plan_created_by character varying,
    action_plan_updated_by character varying,
    action_plan_created_at timestamp without time zone,
    action_plan_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: action_plan_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plan_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plan_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plan_cpp_snapshots_id_seq OWNED BY action_plan_cpp_snapshots.id;


--
-- Name: action_plan_detail_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plan_detail_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    action_plan_id integer,
    barrier_id integer,
    provider_id integer,
    reference_id integer,
    activity_classfication integer,
    activity_type integer,
    component_type integer,
    entity_type integer,
    activity_status integer,
    hours_per_day integer,
    start_date date,
    end_date date,
    client_agreement_date date,
    notes text,
    action_plan_detail_created_by character varying,
    action_plan_detail_updated_by character varying,
    action_plan_detail_created_at timestamp without time zone,
    action_plan_detail_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: action_plan_detail_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plan_detail_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plan_detail_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plan_detail_cpp_snapshots_id_seq OWNED BY action_plan_detail_cpp_snapshots.id;


--
-- Name: action_plan_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plan_details (
    id bigint NOT NULL,
    action_plan_id bigint NOT NULL,
    barrier_id bigint NOT NULL,
    provider_id bigint,
    reference_id integer,
    activity_classfication integer,
    activity_type integer NOT NULL,
    component_type integer,
    entity_type integer NOT NULL,
    activity_status integer NOT NULL,
    hours_per_day integer NOT NULL,
    start_date date NOT NULL,
    end_date date,
    client_agreement_date date,
    notes text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    child_id integer,
    child_dob date
);


--
-- Name: action_plan_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plan_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plan_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plan_details_id_seq OWNED BY action_plan_details.id;


--
-- Name: action_plan_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plan_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: action_plan_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plan_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plan_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plan_details_versions_id_seq OWNED BY action_plan_details_versions.id;


--
-- Name: action_plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plans (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    household_id integer,
    program_unit_id bigint NOT NULL,
    action_plan_type integer,
    action_plan_status integer,
    required_participation_hours integer,
    start_date date,
    end_date date,
    client_agreement_date date,
    notes text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    employment_readiness_plan_id integer NOT NULL,
    short_term_goal character varying,
    long_term_goal character varying,
    core_hours integer,
    non_core_hours integer
);


--
-- Name: action_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plans_id_seq OWNED BY action_plans.id;


--
-- Name: action_plans_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE action_plans_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: action_plans_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE action_plans_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_plans_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE action_plans_versions_id_seq OWNED BY action_plans_versions.id;


--
-- Name: activity_hour_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE activity_hour_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    action_plan_detail_id integer,
    client_id integer,
    activity_date date,
    work_participation_code integer,
    assigned_hours integer,
    completed_hours integer,
    completed_minutes integer,
    absent_hours integer,
    absent_minutes integer,
    absent_reason integer,
    time_limit integer,
    caretaker_flag boolean,
    activity_hour_created_by character varying,
    activity_hour_updated_by character varying,
    activity_hour_created_at timestamp without time zone,
    activity_hour_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: activity_hour_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE activity_hour_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_hour_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE activity_hour_cpp_snapshots_id_seq OWNED BY activity_hour_cpp_snapshots.id;


--
-- Name: activity_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE activity_hours (
    id bigint NOT NULL,
    action_plan_detail_id bigint,
    client_id bigint,
    activity_date date,
    work_participation_code integer,
    assigned_hours integer,
    completed_hours integer,
    completed_minutes integer,
    absent_hours integer,
    absent_minutes integer,
    absent_reason integer,
    time_limit integer,
    caretaker_flag boolean,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: activity_hours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE activity_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_hours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE activity_hours_id_seq OWNED BY activity_hours.id;


--
-- Name: activity_hours_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE activity_hours_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: activity_hours_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE activity_hours_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_hours_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE activity_hours_versions_id_seq OWNED BY activity_hours_versions.id;


--
-- Name: address_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE address_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: address_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE address_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: address_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE address_versions_id_seq OWNED BY address_versions.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE addresses (
    id bigint NOT NULL,
    address_type integer NOT NULL,
    address_line1 character varying(50) NOT NULL,
    address_line2 character varying(50),
    city character varying(50) NOT NULL,
    state integer NOT NULL,
    zip character varying(5) NOT NULL,
    zip_suffix character varying(4),
    effective_begin_date date,
    effective_end_date date,
    county integer,
    in_care_of character varying(20),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    address_notes text,
    address_chgd character varying(1),
    living_arrangement integer,
    verified character varying(1)
);


--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE addresses_id_seq OWNED BY addresses.id;


--
-- Name: agency_referrals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agency_referrals (
    id bigint NOT NULL,
    entity_type integer NOT NULL,
    entity_id integer NOT NULL,
    agency_type integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: agency_referrals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE agency_referrals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agency_referrals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE agency_referrals_id_seq OWNED BY agency_referrals.id;


--
-- Name: alerts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE alerts (
    id bigint NOT NULL,
    alert_text character varying,
    alert_category integer NOT NULL,
    alert_type integer,
    alert_for_type integer,
    alert_for_id integer,
    alert_assigned_to_user_id character varying,
    expiration_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status integer,
    information_only character(1)
);


--
-- Name: alerts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE alerts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: alerts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE alerts_id_seq OWNED BY alerts.id;


--
-- Name: alerts_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE alerts_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: alerts_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE alerts_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: alerts_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE alerts_versions_id_seq OWNED BY alerts_versions.id;


--
-- Name: alien_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE alien_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: alien_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE alien_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: alien_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE alien_versions_id_seq OWNED BY alien_versions.id;


--
-- Name: aliens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE aliens (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    "alien_DOE" date,
    refugee_status integer,
    country_of_origin integer,
    alien_no character varying,
    non_citizen_type integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: aliens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE aliens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aliens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE aliens_id_seq OWNED BY aliens.id;


--
-- Name: app_elig_results_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE app_elig_results_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: app_elig_results_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE app_elig_results_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: app_elig_results_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE app_elig_results_versions_id_seq OWNED BY app_elig_results_versions.id;


--
-- Name: app_service_pgm_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE app_service_pgm_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: app_service_pgm_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE app_service_pgm_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: app_service_pgm_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE app_service_pgm_versions_id_seq OWNED BY app_service_pgm_versions.id;


--
-- Name: application_access_rights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_access_rights (
    id bigint NOT NULL,
    application_id integer,
    ruby_element_id integer,
    access character varying(2),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: application_access_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_access_rights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_access_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_access_rights_id_seq OWNED BY application_access_rights.id;


--
-- Name: application_eligibility_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_eligibility_results (
    id bigint NOT NULL,
    application_id integer NOT NULL,
    client_id integer NOT NULL,
    data_item_type integer NOT NULL,
    result boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: application_eligibility_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_eligibility_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_eligibility_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_eligibility_results_id_seq OWNED BY application_eligibility_results.id;


--
-- Name: application_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_members (
    id bigint NOT NULL,
    client_application_id bigint NOT NULL,
    client_id bigint NOT NULL,
    member_status integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    primary_member character varying(1)
);


--
-- Name: application_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_members_id_seq OWNED BY application_members.id;


--
-- Name: application_members_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_members_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: application_members_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_members_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_members_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_members_versions_id_seq OWNED BY application_members_versions.id;


--
-- Name: application_screenings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_screenings (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_application_id integer NOT NULL,
    determined_case_type integer
);


--
-- Name: application_screenings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_screenings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_screenings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_screenings_id_seq OWNED BY application_screenings.id;


--
-- Name: application_screenings_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_screenings_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: application_screenings_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_screenings_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_screenings_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_screenings_versions_id_seq OWNED BY application_screenings_versions.id;


--
-- Name: application_service_programs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE application_service_programs (
    id bigint NOT NULL,
    client_application_id bigint NOT NULL,
    service_program_id bigint NOT NULL,
    status integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: application_service_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE application_service_programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_service_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE application_service_programs_id_seq OWNED BY application_service_programs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    barrier_id integer NOT NULL,
    assessment_section_id integer,
    assessment_sub_section_refers character varying,
    assessment_barrier_created_by character varying,
    assessment_barrier_updated_by character varying,
    assessment_barrier_created_at timestamp without time zone,
    assessment_barrier_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: assessment_barrier_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_cpp_snapshots_id_seq OWNED BY assessment_barrier_cpp_snapshots.id;


--
-- Name: assessment_barrier_detail_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_detail_histories (
    id bigint NOT NULL,
    client_assessment_history_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    assessment_barrier_id integer,
    assessment_sub_section_id integer,
    comments text,
    display_order integer NOT NULL,
    client_assessment_barrier_detail_created_by character varying NOT NULL,
    client_assessment_barrier_detail_updated_by character varying NOT NULL,
    client_assessment_barrier_detail_created_at timestamp without time zone NOT NULL,
    client_assessment_barrier_detail_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_detail_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_detail_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_detail_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_detail_histories_id_seq OWNED BY assessment_barrier_detail_histories.id;


--
-- Name: assessment_barrier_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_details (
    id bigint NOT NULL,
    assessment_barrier_id bigint,
    assessment_sub_section_id bigint,
    comments text,
    display_order integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_details_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_details_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    assessment_barrier_id integer,
    assessment_sub_section_id integer,
    comments text,
    display_order integer,
    assessment_barrier_detail_created_by character varying,
    assessment_barrier_detail_updated_by character varying,
    assessment_barrier_detail_created_at timestamp without time zone,
    assessment_barrier_detail_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: assessment_barrier_details_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_details_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_details_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_details_cpp_snapshots_id_seq OWNED BY assessment_barrier_details_cpp_snapshots.id;


--
-- Name: assessment_barrier_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_details_id_seq OWNED BY assessment_barrier_details.id;


--
-- Name: assessment_barrier_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_histories (
    id bigint NOT NULL,
    client_assessment_history_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    barrier_id integer NOT NULL,
    assessment_sub_section_refers character varying,
    assessment_section_id integer,
    client_assessment_barrier_created_by character varying NOT NULL,
    client_assessment_barrier_updated_by character varying NOT NULL,
    client_assessment_barrier_created_at timestamp without time zone NOT NULL,
    client_assessment_barrier_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_histories_id_seq OWNED BY assessment_barrier_histories.id;


--
-- Name: assessment_barrier_recommendation_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_recommendation_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    barrier_id integer,
    recommendation_id integer,
    comments text,
    assessment_barrier_recommendation_created_by character varying,
    assessment_barrier_recommendation_updated_by character varying,
    assessment_barrier_recommendation_created_at timestamp without time zone,
    assessment_barrier_recommendation_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: assessment_barrier_recommendation_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_recommendation_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_recommendation_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_recommendation_cpp_snapshots_id_seq OWNED BY assessment_barrier_recommendation_cpp_snapshots.id;


--
-- Name: assessment_barrier_recommendation_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_recommendation_histories (
    id bigint NOT NULL,
    client_assessment_history_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    barrier_id integer NOT NULL,
    recommendation_id integer NOT NULL,
    comments text,
    client_assessment_barrier_recommendation_created_by character varying NOT NULL,
    client_assessment_barrier_recommendation_updated_by character varying NOT NULL,
    client_assessment_barrier_recommendation_created_at timestamp without time zone NOT NULL,
    client_assessment_barrier_recommendation_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_recommendation_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_recommendation_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_recommendation_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_recommendation_histories_id_seq OWNED BY assessment_barrier_recommendation_histories.id;


--
-- Name: assessment_barrier_recommendations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barrier_recommendations (
    id bigint NOT NULL,
    client_assessment_id integer NOT NULL,
    barrier_id integer NOT NULL,
    recommendation_id integer NOT NULL,
    comments text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_barrier_recommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barrier_recommendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barrier_recommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barrier_recommendations_id_seq OWNED BY assessment_barrier_recommendations.id;


--
-- Name: assessment_barriers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_barriers (
    id bigint NOT NULL,
    client_assessment_id bigint,
    barrier_id integer NOT NULL,
    assessment_sub_section_refers character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    assessment_section_id integer
);


--
-- Name: assessment_barriers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_barriers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_barriers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_barriers_id_seq OWNED BY assessment_barriers.id;


--
-- Name: assessment_careers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_careers (
    id bigint NOT NULL,
    client_id bigint,
    assessment_id bigint,
    career_code character varying NOT NULL,
    created_by integer NOT NULL,
    updated_by integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_careers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_careers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_careers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_careers_id_seq OWNED BY assessment_careers.id;


--
-- Name: assessment_question_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_question_metadata (
    id bigint NOT NULL,
    assessment_question_id bigint NOT NULL,
    response_data_type character varying,
    response_min_lngth integer,
    response_max_lngth integer,
    response_frmt_msk character varying,
    response_min_val character varying,
    response_max_val character varying,
    response_var_nm character varying,
    response_err_msg character varying,
    style_info character varying,
    style_class character varying,
    prompt_style_info character varying,
    prompt_style_class character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_question_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_question_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_question_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_question_metadata_id_seq OWNED BY assessment_question_metadata.id;


--
-- Name: assessment_question_multi_responses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_question_multi_responses (
    id bigint NOT NULL,
    assessment_question_id integer,
    txt character varying,
    val character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    display_order integer
);


--
-- Name: assessment_question_multi_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_question_multi_responses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_question_multi_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_question_multi_responses_id_seq OWNED BY assessment_question_multi_responses.id;


--
-- Name: assessment_questions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_questions (
    id bigint NOT NULL,
    assessment_sub_section_id bigint NOT NULL,
    title character varying NOT NULL,
    question_text text NOT NULL,
    display_order integer NOT NULL,
    enabled integer NOT NULL,
    required integer NOT NULL,
    input_type_id integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_questions_id_seq OWNED BY assessment_questions.id;


--
-- Name: assessment_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_sections (
    id bigint NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    display_order integer NOT NULL,
    enabled integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_sections_id_seq OWNED BY assessment_sections.id;


--
-- Name: assessment_strength_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_strength_histories (
    id bigint NOT NULL,
    client_assessment_history_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    client_assessment_id integer,
    assessment_sub_section_id integer,
    comments text,
    display_order integer NOT NULL,
    client_assessment_strength_created_by character varying NOT NULL,
    client_assessment_strength_updated_by character varying NOT NULL,
    client_assessment_strength_created_at timestamp without time zone NOT NULL,
    client_assessment_strength_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_strength_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_strength_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_strength_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_strength_histories_id_seq OWNED BY assessment_strength_histories.id;


--
-- Name: assessment_strengths; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_strengths (
    id bigint NOT NULL,
    client_assessment_id bigint,
    assessment_sub_section_id bigint,
    comments text,
    display_order integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_strengths_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_strengths_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    assessment_sub_section_id integer,
    comments text,
    display_order integer,
    assessment_strength_created_by character varying,
    assessment_strength_updated_by character varying,
    assessment_strength_created_at timestamp without time zone,
    assessment_strength_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: assessment_strengths_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_strengths_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_strengths_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_strengths_cpp_snapshots_id_seq OWNED BY assessment_strengths_cpp_snapshots.id;


--
-- Name: assessment_strengths_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_strengths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_strengths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_strengths_id_seq OWNED BY assessment_strengths.id;


--
-- Name: assessment_sub_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assessment_sub_sections (
    id bigint NOT NULL,
    assessment_section_id bigint NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    display_order integer NOT NULL,
    enabled integer NOT NULL,
    all_sub_section_order integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assessment_sub_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assessment_sub_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assessment_sub_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assessment_sub_sections_id_seq OWNED BY assessment_sub_sections.id;


--
-- Name: assignments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assignments (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assignments_id_seq OWNED BY assignments.id;


--
-- Name: assignments_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE assignments_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: assignments_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE assignments_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assignments_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE assignments_versions_id_seq OWNED BY assignments_versions.id;


--
-- Name: attop_error_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE attop_error_logs (
    id bigint NOT NULL,
    object_name character varying,
    method_name character varying,
    error_message character varying,
    trace_details text,
    created_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: attop_error_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE attop_error_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attop_error_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE attop_error_logs_id_seq OWNED BY attop_error_logs.id;


--
-- Name: audit_master_detail_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_master_detail_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_master_expense_detail_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_master_expense_detail_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_master_inc_adj_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_master_inc_adj_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_master_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_master_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_expense_detail_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_expense_detail_secs (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    expense_due_date date,
    expense_amount numeric(8,2),
    expense_use_code integer,
    payment_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_expense_detail_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_expense_detail_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_expense_detail_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_expense_detail_secs_id_seq OWNED BY audit_trail_expense_detail_secs.id;


--
-- Name: audit_trail_expense_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_expense_details (
    id integer NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    expense_due_date date,
    expense_amount numeric(8,2),
    expense_use_code integer,
    payment_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_inc_adj_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_inc_adj_secs (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    audit_trail_income_details_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    adjusted_amount numeric(8,2),
    adjusted_reason integer,
    adj_use_ind text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_inc_adj_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_inc_adj_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_inc_adj_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_inc_adj_secs_id_seq OWNED BY audit_trail_inc_adj_secs.id;


--
-- Name: audit_trail_inc_adjs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_inc_adjs (
    id integer NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    audit_trail_income_details_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    adjusted_amount numeric(8,2),
    adjusted_reason integer,
    adj_use_ind text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    b_details_sequence integer
);


--
-- Name: audit_trail_inc_detail_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_inc_detail_secs (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    check_type integer,
    date_received date,
    gross_amt numeric(8,2),
    adjusted_total numeric(8,2),
    net_amt numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_inc_detail_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_inc_detail_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_inc_detail_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_inc_detail_secs_id_seq OWNED BY audit_trail_inc_detail_secs.id;


--
-- Name: audit_trail_income_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_income_details (
    id integer NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    check_type integer,
    date_received date,
    gross_amt numeric(8,2),
    adjusted_total numeric(8,2),
    net_amt numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_master_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_master_secs (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    audit_det_ind text,
    client_id integer NOT NULL,
    source text,
    service_program_id integer NOT NULL,
    type integer NOT NULL,
    processing_location integer NOT NULL,
    inc_avg_begin_date date,
    contract_amt numeric(8,2) NOT NULL,
    intended_use_mos integer,
    effective_beg_date date,
    frequency integer,
    exp_calc_months integer,
    effective_end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_master_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_master_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_master_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_master_secs_id_seq OWNED BY audit_trail_master_secs.id;


--
-- Name: audit_trail_masters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_masters (
    id integer NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    audit_det_ind text,
    client_id integer NOT NULL,
    source text,
    service_program_id integer NOT NULL,
    inc_exp_type integer NOT NULL,
    processing_location integer NOT NULL,
    inc_avg_begin_date date,
    contract_amt numeric(8,2),
    intended_use_mos integer,
    effective_beg_date date,
    frequency integer,
    exp_calc_months integer,
    effective_end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_res_detail_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_res_detail_secs (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    resource_value numeric(8,2),
    resource_valued_date date,
    first_of_month_value numeric(8,2),
    res_value_basis integer,
    res_ins_face_value numeric(8,2),
    amount_owned_on_resource numeric(8,2),
    amount_owned_as_of_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_res_detail_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_res_detail_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_res_detail_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_res_detail_secs_id_seq OWNED BY audit_trail_res_detail_secs.id;


--
-- Name: audit_trail_res_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_res_details (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    resource_value numeric(8,2),
    resource_valued_date date,
    first_of_month_value numeric(8,2),
    res_value_basis integer,
    res_ins_face_value numeric(8,2),
    amount_owned_on_resource numeric(8,2),
    amount_owned_as_of_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_res_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_res_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_res_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_res_details_id_seq OWNED BY audit_trail_res_details.id;


--
-- Name: audit_trail_shared_secs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_shared_secs (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    client_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_shared_secs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_shared_secs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_shared_secs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_shared_secs_id_seq OWNED BY audit_trail_shared_secs.id;


--
-- Name: audit_trail_shareds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audit_trail_shareds (
    id bigint NOT NULL,
    audit_trail_masters_id bigint NOT NULL,
    client_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_trail_shareds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE audit_trail_shareds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_shareds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audit_trail_shareds_id_seq OWNED BY audit_trail_shareds.id;


--
-- Name: barriers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE barriers (
    id bigint NOT NULL,
    assessment_section_id integer NOT NULL,
    description character varying NOT NULL,
    confirmed integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: barriers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE barriers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: barriers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE barriers_id_seq OWNED BY barriers.id;


--
-- Name: benefits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE benefits (
    id bigint NOT NULL,
    budget_unit_id bigint NOT NULL,
    warrant_number integer,
    date_of_payment_extract date,
    payment_type integer,
    check_amount numeric(8,2),
    sanction_type integer,
    grant_amount numeric(8,2),
    retro_amount numeric(8,2),
    recoup_amount numeric(8,2),
    county integer,
    service_program_id integer,
    number_of_adults integer,
    number_of_children integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: benefits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE benefits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: benefits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE benefits_id_seq OWNED BY benefits.id;


--
-- Name: budget_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE budget_units (
    id bigint NOT NULL,
    household_id bigint NOT NULL,
    service_program_id integer,
    application_date date,
    service_location integer,
    reevaluation_date date,
    application_origin integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: budget_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE budget_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: budget_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE budget_units_id_seq OWNED BY budget_units.id;


--
-- Name: career_pathway_plan_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE career_pathway_plan_state_transitions (
    id bigint NOT NULL,
    career_pathway_plan_id integer,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    reason character varying
);


--
-- Name: career_pathway_plan_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE career_pathway_plan_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: career_pathway_plan_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE career_pathway_plan_state_transitions_id_seq OWNED BY career_pathway_plan_state_transitions.id;


--
-- Name: career_pathway_plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE career_pathway_plans (
    id bigint NOT NULL,
    client_assessment_id integer,
    employment_readyness_plan_id integer,
    client_signature integer,
    client_signed_date date,
    case_worker_signature character varying,
    case_worker_signed_date date,
    supervisor_signature character varying,
    supervisor_signed_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    update_communication_type integer,
    core_hours integer,
    non_core_hours integer,
    other_hours integer,
    supportive_services_hours integer,
    program_unit_id integer,
    reason character varying,
    state integer
);


--
-- Name: career_pathway_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE career_pathway_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: career_pathway_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE career_pathway_plans_id_seq OWNED BY career_pathway_plans.id;


--
-- Name: change_household_address_processes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE change_household_address_processes (
    id bigint NOT NULL,
    household_id integer,
    current_address_id integer,
    new_address_id integer,
    process_completed character varying(1),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: change_household_address_processes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE change_household_address_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: change_household_address_processes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE change_household_address_processes_id_seq OWNED BY change_household_address_processes.id;


--
-- Name: client_addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_addresses (
    id bigint NOT NULL,
    client_id bigint,
    address_id bigint,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_addresses_id_seq OWNED BY client_addresses.id;


--
-- Name: client_applications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_applications (
    id bigint NOT NULL,
    application_date date NOT NULL,
    application_status integer NOT NULL,
    application_disposition_status integer,
    application_disposition_reason integer,
    application_origin integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    service_program_group integer,
    disposition_date date,
    application_received_office integer,
    intake_worker_id character varying,
    household_id integer,
    application_processor character varying
);


--
-- Name: client_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_applications_id_seq OWNED BY client_applications.id;


--
-- Name: client_applications_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_applications_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_applications_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_applications_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_applications_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_applications_versions_id_seq OWNED BY client_applications_versions.id;


--
-- Name: client_assessment_answer_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessment_answer_histories (
    id bigint NOT NULL,
    client_assessment_history_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    assessment_question_id integer NOT NULL,
    answer_value character varying,
    client_assessment_answer_created_by character varying NOT NULL,
    client_assessment_answer_updated_by character varying NOT NULL,
    client_assessment_answer_created_at timestamp without time zone NOT NULL,
    client_assessment_answer_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_assessment_answer_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessment_answer_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessment_answer_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessment_answer_histories_id_seq OWNED BY client_assessment_answer_histories.id;


--
-- Name: client_assessment_answers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessment_answers (
    id bigint NOT NULL,
    client_assessment_id bigint NOT NULL,
    assessment_question_id integer NOT NULL,
    answer_value character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_assessment_answers_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessment_answers_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    assessment_question_id integer,
    answer_value character varying,
    client_assessment_answer_created_by character varying,
    client_assessment_answer_updated_by character varying,
    client_assessment_answer_created_at timestamp without time zone,
    client_assessment_answer_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: client_assessment_answers_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessment_answers_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessment_answers_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessment_answers_cpp_snapshots_id_seq OWNED BY client_assessment_answers_cpp_snapshots.id;


--
-- Name: client_assessment_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessment_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessment_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessment_answers_id_seq OWNED BY client_assessment_answers.id;


--
-- Name: client_assessment_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessment_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id bigint NOT NULL,
    client_assessment_id integer NOT NULL,
    client_id integer NOT NULL,
    assessment_date date NOT NULL,
    assessment_status integer,
    comments character varying,
    client_assessment_created_by character varying NOT NULL,
    client_assessment_updated_by character varying NOT NULL,
    client_assessment_created_at timestamp without time zone,
    client_assessment_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: client_assessment_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessment_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessment_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessment_cpp_snapshots_id_seq OWNED BY client_assessment_cpp_snapshots.id;


--
-- Name: client_assessment_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessment_histories (
    id bigint NOT NULL,
    parent_primary_key_id integer NOT NULL,
    client_id integer NOT NULL,
    assessment_date date NOT NULL,
    assessment_status integer NOT NULL,
    comments character varying,
    client_assessment_created_by character varying NOT NULL,
    client_assessment_updated_by character varying NOT NULL,
    client_assessment_created_at timestamp without time zone NOT NULL,
    client_assessment_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_assessment_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessment_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessment_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessment_histories_id_seq OWNED BY client_assessment_histories.id;


--
-- Name: client_assessments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_assessments (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    assessment_date date NOT NULL,
    assessment_status integer NOT NULL,
    comments character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    review_date date,
    withdraw_reason integer
);


--
-- Name: client_assessments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_assessments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_assessments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_assessments_id_seq OWNED BY client_assessments.id;


--
-- Name: client_barriers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_barriers (
    id bigint NOT NULL,
    client_id bigint,
    barrier_type integer,
    identfied_date date,
    barrier_identfied_by character varying,
    referral_source character varying,
    end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_barriers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_barriers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_barriers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_barriers_id_seq OWNED BY client_barriers.id;


--
-- Name: client_barriers_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_barriers_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_barriers_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_barriers_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_barriers_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_barriers_versions_id_seq OWNED BY client_barriers_versions.id;


--
-- Name: client_characteristic_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_characteristic_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_characteristic_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_characteristic_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_characteristic_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_characteristic_versions_id_seq OWNED BY client_characteristic_versions.id;


--
-- Name: client_characteristics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_characteristics (
    id bigint NOT NULL,
    client_id bigint,
    characteristic_id integer NOT NULL,
    characteristic_type character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    start_date date NOT NULL,
    end_date date
);


--
-- Name: client_characteristics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_characteristics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_characteristics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_characteristics_id_seq OWNED BY client_characteristics.id;


--
-- Name: client_doc_verfications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_doc_verfications (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    document_type integer,
    document_verfied_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_doc_verfications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_doc_verfications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_doc_verfications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_doc_verfications_id_seq OWNED BY client_doc_verfications.id;


--
-- Name: client_doc_verfications_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_doc_verfications_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_doc_verfications_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_doc_verfications_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_doc_verfications_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_doc_verfications_versions_id_seq OWNED BY client_doc_verfications_versions.id;


--
-- Name: client_emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_emails (
    id bigint NOT NULL,
    client_id bigint,
    email_address character varying NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_emails_id_seq OWNED BY client_emails.id;


--
-- Name: client_emails_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_emails_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_emails_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_emails_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_emails_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_emails_versions_id_seq OWNED BY client_emails_versions.id;


--
-- Name: client_expenses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_expenses (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    expense_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_expenses_id_seq OWNED BY client_expenses.id;


--
-- Name: client_expenses_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_expenses_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_expenses_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_expenses_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_expenses_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_expenses_versions_id_seq OWNED BY client_expenses_versions.id;


--
-- Name: client_immunization_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_immunization_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_immunization_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_immunization_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_immunization_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_immunization_versions_id_seq OWNED BY client_immunization_versions.id;


--
-- Name: client_immunizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_immunizations (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    immunizations_record character(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_immunizations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_immunizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_immunizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_immunizations_id_seq OWNED BY client_immunizations.id;


--
-- Name: client_incomes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_incomes (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    income_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_incomes_id_seq OWNED BY client_incomes.id;


--
-- Name: client_incomes_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_incomes_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_incomes_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_incomes_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_incomes_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_incomes_versions_id_seq OWNED BY client_incomes_versions.id;


--
-- Name: client_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_notes (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    notes_type integer NOT NULL,
    notes character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL
);


--
-- Name: client_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_notes_id_seq OWNED BY client_notes.id;


--
-- Name: client_parental_rspabilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_parental_rspabilities (
    id bigint NOT NULL,
    client_relationship_id bigint NOT NULL,
    amount_collected numeric(8,2),
    court_ordered_amount numeric(8,2),
    good_cause character varying(1),
    married_at_birth character varying(1),
    paternity_established character varying(1),
    court_order_number character varying(10),
    deprivation_code integer,
    child_support_referral integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_status integer NOT NULL
);


--
-- Name: client_parental_rspabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_parental_rspabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_parental_rspabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_parental_rspabilities_id_seq OWNED BY client_parental_rspabilities.id;


--
-- Name: client_race_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_race_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_race_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_race_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_race_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_race_versions_id_seq OWNED BY client_race_versions.id;


--
-- Name: client_races; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_races (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    race_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_races_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_races_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_races_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_races_id_seq OWNED BY client_races.id;


--
-- Name: client_relationship_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_relationship_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_relationship_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_relationship_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_relationship_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_relationship_versions_id_seq OWNED BY client_relationship_versions.id;


--
-- Name: client_relationships; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_relationships (
    id bigint NOT NULL,
    from_client_id integer NOT NULL,
    relationship_type integer NOT NULL,
    to_client_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_relationships_id_seq OWNED BY client_relationships.id;


--
-- Name: client_resources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_resources (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    resource_id bigint NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    usage_percentage numeric(5,2)
);


--
-- Name: client_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_resources_id_seq OWNED BY client_resources.id;


--
-- Name: client_resources_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_resources_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_resources_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_resources_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_resources_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_resources_versions_id_seq OWNED BY client_resources_versions.id;


--
-- Name: client_scores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_scores (
    id bigint NOT NULL,
    client_id bigint,
    test_type integer,
    date_referred date,
    date_test_taken_on date,
    scores numeric(5,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_assessment_id integer
);


--
-- Name: client_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_scores_id_seq OWNED BY client_scores.id;


--
-- Name: client_scores_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_scores_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_scores_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_scores_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_scores_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_scores_versions_id_seq OWNED BY client_scores_versions.id;


--
-- Name: client_skills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_skills (
    id bigint NOT NULL,
    client_id bigint,
    skill_type integer,
    identfied_date date,
    skill_identfied_by character varying,
    referral_source character varying,
    end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: client_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_skills_id_seq OWNED BY client_skills.id;


--
-- Name: client_skills_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_skills_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_skills_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_skills_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_skills_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_skills_versions_id_seq OWNED BY client_skills_versions.id;


--
-- Name: client_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE client_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: client_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE client_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE client_versions_id_seq OWNED BY client_versions.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE clients (
    id bigint NOT NULL,
    first_name character varying(35) NOT NULL,
    last_name character varying(35) NOT NULL,
    middle_name character varying(35),
    suffix character varying(4),
    middle_inital character varying(1),
    ssn character varying(9) NOT NULL,
    dob date,
    gender integer,
    marital_status integer,
    citizenship character varying(1),
    identification_verfication_date date,
    death_date date,
    primary_language integer,
    ethnicity character varying(1),
    ssn_change character varying(1),
    dob_change character varying(1),
    name_chgd character varying(1),
    enum_counter integer DEFAULT 0,
    sves_type integer,
    sves_status character varying(1),
    sves_send_date date,
    sves_verified_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ssn_enumeration_type integer,
    identification_type integer,
    exempt_from_immunization character varying(1),
    other_identification_document character varying(50),
    veteran_flag character varying(1),
    client_email character varying,
    felon_flag character(1),
    rcvd_tea_out_of_state_flag character(1),
    register_to_vote_flag character(1),
    education_add_flag character varying(1),
    earned_income_flag character varying(1),
    job_offer_flag character varying(1),
    unearned_income_flag character varying(1),
    expense_add_flag character varying(1),
    resource_add_flag character varying(1),
    residency character(1),
    currently_working_flag character varying(1)
);


--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE clients_id_seq OWNED BY clients.id;


--
-- Name: clnt_assmnt_answers_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE clnt_assmnt_answers_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: clnt_assmnt_answers_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE clnt_assmnt_answers_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clnt_assmnt_answers_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE clnt_assmnt_answers_versions_id_seq OWNED BY clnt_assmnt_answers_versions.id;


--
-- Name: clnt_parent_rspability_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE clnt_parent_rspability_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: clnt_parent_rspability_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE clnt_parent_rspability_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clnt_parent_rspability_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE clnt_parent_rspability_versions_id_seq OWNED BY clnt_parent_rspability_versions.id;


--
-- Name: code_tables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE code_tables (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: code_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE code_tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: code_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE code_tables_id_seq OWNED BY code_tables.id;


--
-- Name: code_tables_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE code_tables_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: code_tables_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE code_tables_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: code_tables_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE code_tables_versions_id_seq OWNED BY code_tables_versions.id;


--
-- Name: codetable_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE codetable_items (
    id bigint NOT NULL,
    code_table_id integer NOT NULL,
    short_description character varying NOT NULL,
    long_description character varying,
    system_defined boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    active boolean,
    type character varying,
    parent_id integer,
    parent_type character varying,
    sort_order integer
);


--
-- Name: codetable_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE codetable_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: codetable_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE codetable_items_id_seq OWNED BY codetable_items.id;


--
-- Name: codetable_items_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE codetable_items_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: codetable_items_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE codetable_items_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: codetable_items_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE codetable_items_versions_id_seq OWNED BY codetable_items_versions.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comments (
    id bigint NOT NULL,
    subject text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    comment text,
    url character varying
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: cost_centers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cost_centers (
    id bigint NOT NULL,
    service_program_group integer,
    cost_center character varying,
    internal_order character varying,
    gl_account character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    service_type integer,
    threshold_amount numeric(8,2)
);


--
-- Name: cost_centers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cost_centers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cost_centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cost_centers_id_seq OWNED BY cost_centers.id;


--
-- Name: cost_centers_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cost_centers_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: cost_centers_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cost_centers_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cost_centers_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cost_centers_versions_id_seq OWNED BY cost_centers_versions.id;


--
-- Name: data_validations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE data_validations (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    data_item_type integer NOT NULL,
    result boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: data_validations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE data_validations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_validations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE data_validations_id_seq OWNED BY data_validations.id;


--
-- Name: data_validations_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE data_validations_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: data_validations_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE data_validations_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_validations_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE data_validations_versions_id_seq OWNED BY data_validations_versions.id;


--
-- Name: disabilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE disabilities (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    disiability_type integer NOT NULL,
    review_expiration_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: disabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE disabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: disabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE disabilities_id_seq OWNED BY disabilities.id;


--
-- Name: disability_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE disability_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: disability_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE disability_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: disability_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE disability_versions_id_seq OWNED BY disability_versions.id;


--
-- Name: ebt_account_number_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ebt_account_number_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: educations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE educations (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    school_type integer,
    school_name integer,
    attendance_type integer,
    school_address_1 text,
    school_address_2 text,
    effective_beg_date date,
    effective_end_date date,
    major_study text,
    high_grade_level integer NOT NULL,
    expected_grad_date date,
    degree_obtained integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    effort integer
);


--
-- Name: educations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE educations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE educations_id_seq OWNED BY educations.id;


--
-- Name: educations_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE educations_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: educations_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE educations_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: educations_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE educations_versions_id_seq OWNED BY educations_versions.id;


--
-- Name: eligibility_determine_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE eligibility_determine_results (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    program_unit_id integer,
    client_id integer,
    message_type integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    message_type_text character varying(25)
);


--
-- Name: eligibility_determine_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE eligibility_determine_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: eligibility_determine_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE eligibility_determine_results_id_seq OWNED BY eligibility_determine_results.id;


--
-- Name: employers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employers (
    id bigint NOT NULL,
    federal_ein character varying(9),
    state_ein character varying(12),
    employer_name character varying,
    employer_country_code integer,
    employer_contact character varying,
    employer_optional_contact character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    notes text,
    email_address character varying(50)
);


--
-- Name: employers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employers_id_seq OWNED BY employers.id;


--
-- Name: employers_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employers_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: employers_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employers_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employers_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employers_versions_id_seq OWNED BY employers_versions.id;


--
-- Name: employment_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employment_details (
    id bigint NOT NULL,
    employment_id bigint,
    effective_begin_date date NOT NULL,
    effective_end_date date,
    hours_per_period integer NOT NULL,
    salary_pay_amt numeric(8,2) NOT NULL,
    salary_pay_frequency integer NOT NULL,
    position_type character varying,
    current_status integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    position_type_desc character varying
);


--
-- Name: employment_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employment_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employment_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employment_details_id_seq OWNED BY employment_details.id;


--
-- Name: employment_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employment_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: employment_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employment_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employment_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employment_details_versions_id_seq OWNED BY employment_details_versions.id;


--
-- Name: employment_readiness_plan_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employment_readiness_plan_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    client_assessment_id integer NOT NULL,
    core_hours integer,
    non_core_hours integer,
    supportive_services_hours integer,
    other_hours integer,
    comments text,
    employment_readiness_plan_created_by character varying,
    employment_readiness_plan_updated_by character varying,
    employment_readiness_plan_created_at timestamp without time zone,
    employment_readiness_plan_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: employment_readiness_plan_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employment_readiness_plan_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employment_readiness_plan_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employment_readiness_plan_cpp_snapshots_id_seq OWNED BY employment_readiness_plan_cpp_snapshots.id;


--
-- Name: employment_readiness_plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employment_readiness_plans (
    id bigint NOT NULL,
    client_assessment_id bigint,
    core_hours integer,
    non_core_hours integer,
    supportive_services_hours integer,
    other_hours integer,
    comments text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: employment_readiness_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employment_readiness_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employment_readiness_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employment_readiness_plans_id_seq OWNED BY employment_readiness_plans.id;


--
-- Name: employments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employments (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    employer_name character varying(35),
    employer_contact character varying(25),
    employer_address1 character varying(30),
    employer_address2 character varying(30),
    employer_phone character varying(10),
    employer_phone_ext character varying(5),
    effective_begin_date date NOT NULL,
    effective_end_date date,
    position_title character varying(35),
    duties text,
    leave_reason integer,
    employment_level integer,
    placement_ind integer,
    health_ins_covered integer,
    occupation_code character varying(11),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    employer_id integer NOT NULL,
    income_type integer
);


--
-- Name: employments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employments_id_seq OWNED BY employments.id;


--
-- Name: employments_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employments_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: employments_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employments_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employments_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employments_versions_id_seq OWNED BY employments_versions.id;


--
-- Name: entity_addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE entity_addresses (
    id bigint NOT NULL,
    entity_type integer NOT NULL,
    entity_id integer NOT NULL,
    address_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: entity_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE entity_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entity_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE entity_addresses_id_seq OWNED BY entity_addresses.id;


--
-- Name: entity_addresses_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE entity_addresses_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: entity_addresses_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE entity_addresses_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entity_addresses_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE entity_addresses_versions_id_seq OWNED BY entity_addresses_versions.id;


--
-- Name: entity_phones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE entity_phones (
    id bigint NOT NULL,
    entity_type integer NOT NULL,
    entity_id integer NOT NULL,
    phone_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: entity_phones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE entity_phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entity_phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE entity_phones_id_seq OWNED BY entity_phones.id;


--
-- Name: entity_phones_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE entity_phones_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: entity_phones_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE entity_phones_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entity_phones_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE entity_phones_versions_id_seq OWNED BY entity_phones_versions.id;


--
-- Name: entity_question_answers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE entity_question_answers (
    id bigint NOT NULL,
    entity_id integer NOT NULL,
    entity_type integer NOT NULL,
    question_category_id integer NOT NULL,
    question_id integer NOT NULL,
    answer_flag character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: entity_question_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE entity_question_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entity_question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE entity_question_answers_id_seq OWNED BY entity_question_answers.id;


--
-- Name: event_to_actions_mappings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE event_to_actions_mappings (
    id bigint NOT NULL,
    event_type integer,
    action_type integer,
    method_name character varying,
    sort_order integer,
    task_type integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    enable_flag character varying(1),
    queue_type integer
);


--
-- Name: event_to_actions_mappings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE event_to_actions_mappings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_to_actions_mappings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE event_to_actions_mappings_id_seq OWNED BY event_to_actions_mappings.id;


--
-- Name: expected_work_participation_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE expected_work_participation_hours (
    id bigint NOT NULL,
    service_program_id integer NOT NULL,
    case_type integer NOT NULL,
    work_participation_mandatory_deferred character varying,
    work_participation_condition character varying,
    min_core_hours integer NOT NULL,
    non_core_hours integer NOT NULL,
    comments character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    workpays_min_employment_hours integer
);


--
-- Name: expected_work_participation_hours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE expected_work_participation_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: expected_work_participation_hours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE expected_work_participation_hours_id_seq OWNED BY expected_work_participation_hours.id;


--
-- Name: expense_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE expense_details (
    id bigint NOT NULL,
    expense_id integer NOT NULL,
    expense_due_date date,
    expense_amount numeric(8,2) NOT NULL,
    expense_use_code integer,
    payment_method integer,
    payment_status integer,
    expense_calc_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: expense_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE expense_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: expense_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE expense_details_id_seq OWNED BY expense_details.id;


--
-- Name: expense_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE expense_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: expense_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE expense_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: expense_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE expense_details_versions_id_seq OWNED BY expense_details_versions.id;


--
-- Name: expenses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE expenses (
    id bigint NOT NULL,
    expensetype integer NOT NULL,
    amount numeric(8,2),
    effective_beg_date date NOT NULL,
    effective_end_date date,
    creditor_name character varying(35),
    creditor_contact character varying(35),
    creditor_phone character varying(10),
    creditor_ext character varying(5),
    payment_status integer,
    frequency integer,
    payment_method integer,
    verified character varying(1),
    notes text,
    use_code integer,
    exp_calc_months integer,
    budget_recalc_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE expenses_id_seq OWNED BY expenses.id;


--
-- Name: expenses_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE expenses_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: expenses_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE expenses_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: expenses_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE expenses_versions_id_seq OWNED BY expenses_versions.id;


--
-- Name: household_member_step_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE household_member_step_statuses (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    step integer,
    complete_flag character varying(1),
    step_partial character varying,
    household_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    step_name character varying
);


--
-- Name: household_member_step_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE household_member_step_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: household_member_step_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE household_member_step_statuses_id_seq OWNED BY household_member_step_statuses.id;


--
-- Name: household_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE household_members (
    id bigint NOT NULL,
    household_id bigint NOT NULL,
    client_id bigint NOT NULL,
    start_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    head_of_household_flag character(1),
    member_status integer,
    end_date date
);


--
-- Name: household_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE household_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: household_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE household_members_id_seq OWNED BY household_members.id;


--
-- Name: households; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE households (
    id bigint NOT NULL,
    name character varying,
    close_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    intake_worker_id character varying,
    processing_location_id integer
);


--
-- Name: households_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE households_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: households_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE households_id_seq OWNED BY households.id;


--
-- Name: immunizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE immunizations (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    immunizations_record character varying,
    vaccine_type integer,
    provider_id integer,
    date_administered date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: immunizations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE immunizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: immunizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE immunizations_id_seq OWNED BY immunizations.id;


--
-- Name: import_data_from_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE import_data_from_files (
    id bigint NOT NULL,
    name character varying,
    age integer
);


--
-- Name: import_data_from_files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE import_data_from_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_data_from_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE import_data_from_files_id_seq OWNED BY import_data_from_files.id;


--
-- Name: in_state_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE in_state_payments (
    id bigint NOT NULL,
    program_unit_id integer NOT NULL,
    client_id integer,
    payment_month date NOT NULL,
    issue_date date,
    dollar_amount numeric(8,2) NOT NULL,
    action_date date,
    sanction integer,
    payment_type integer NOT NULL,
    work_participation_status integer,
    available_date date,
    recoup_amount numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    action_type integer,
    service_program_id integer
);


--
-- Name: in_state_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE in_state_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: in_state_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE in_state_payments_id_seq OWNED BY in_state_payments.id;


--
-- Name: income_detail_adjust_reasons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE income_detail_adjust_reasons (
    id bigint NOT NULL,
    income_detail_id integer NOT NULL,
    adjusted_amount numeric(8,2) NOT NULL,
    adjusted_reason integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: income_detail_adjust_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE income_detail_adjust_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: income_detail_adjust_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE income_detail_adjust_reasons_id_seq OWNED BY income_detail_adjust_reasons.id;


--
-- Name: income_detail_adjust_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE income_detail_adjust_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: income_detail_adjust_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE income_detail_adjust_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: income_detail_adjust_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE income_detail_adjust_versions_id_seq OWNED BY income_detail_adjust_versions.id;


--
-- Name: income_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE income_details (
    id bigint NOT NULL,
    income_id integer NOT NULL,
    check_type integer NOT NULL,
    date_received date NOT NULL,
    gross_amt numeric(8,2),
    adjusted_total numeric(8,2),
    net_amt numeric(8,2),
    cnt_for_convert_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: income_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE income_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: income_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE income_details_id_seq OWNED BY income_details.id;


--
-- Name: income_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE income_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: income_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE income_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: income_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE income_details_versions_id_seq OWNED BY income_details_versions.id;


--
-- Name: incomes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE incomes (
    id bigint NOT NULL,
    incometype integer NOT NULL,
    amount numeric(8,2),
    frequency integer,
    classification integer,
    source character varying(50),
    effective_beg_date date,
    effective_end_date date,
    notes text,
    verified character varying(1),
    contract_amt numeric(8,2),
    intended_use_mos integer,
    inc_avg_beg_date date,
    recal_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    employment_id integer,
    employer_id integer
);


--
-- Name: incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE incomes_id_seq OWNED BY incomes.id;


--
-- Name: incomes_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE incomes_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: incomes_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE incomes_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: incomes_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE incomes_versions_id_seq OWNED BY incomes_versions.id;


--
-- Name: instate_payment_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE instate_payment_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: instate_payment_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE instate_payment_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: instate_payment_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE instate_payment_versions_id_seq OWNED BY instate_payment_versions.id;


--
-- Name: line_item_history_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE line_item_history_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: line_item_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE line_item_history_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: line_item_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE line_item_history_versions_id_seq OWNED BY line_item_history_versions.id;


--
-- Name: local_office_informations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE local_office_informations (
    id bigint NOT NULL,
    code_table_item_id bigint,
    street_address1 text,
    street_address2 text,
    street_address_city integer,
    street_address_state integer,
    street_address_zip text,
    street_address_zip_suffix text,
    mailing_address1 text,
    mailing_address2 text,
    mailing_address_city integer,
    mailing_address_state integer,
    mailing_address_zip text,
    mailing_address_zip_suffix text,
    phone_number text,
    fax_number text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    latitude double precision,
    longitude double precision
);


--
-- Name: local_office_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE local_office_informations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: local_office_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE local_office_informations_id_seq OWNED BY local_office_informations.id;


--
-- Name: nightly_batch_processes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE nightly_batch_processes (
    id bigint NOT NULL,
    entity_type integer NOT NULL,
    entity_id integer NOT NULL,
    process_type integer NOT NULL,
    sub_process_type integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    reason integer,
    client_id integer,
    processed character varying(1),
    run_month date,
    submit_flag character varying(1)
);


--
-- Name: nightly_batch_processes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE nightly_batch_processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nightly_batch_processes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE nightly_batch_processes_id_seq OWNED BY nightly_batch_processes.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notes (
    id bigint NOT NULL,
    entity_type integer NOT NULL,
    entity_id integer NOT NULL,
    notes_type integer NOT NULL,
    notes text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    reference_id integer
);


--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notes_id_seq OWNED BY notes.id;


--
-- Name: notes_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notes_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: notes_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notes_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notes_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notes_versions_id_seq OWNED BY notes_versions.id;


--
-- Name: notice_generation_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notice_generation_details (
    id bigint NOT NULL,
    notice_generations_id bigint NOT NULL,
    name text,
    close_reason integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: notice_generation_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notice_generation_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notice_generation_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notice_generation_details_id_seq OWNED BY notice_generation_details.id;


--
-- Name: notice_generations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notice_generations (
    id bigint NOT NULL,
    notice_generated_date date NOT NULL,
    action_type integer NOT NULL,
    action_reason integer NOT NULL,
    date_to_print date NOT NULL,
    notice_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    reference_id integer,
    processing_location integer,
    service_program_id integer,
    name text,
    address1 text,
    address2 text,
    city text,
    state text,
    zip integer,
    zip_suffix integer,
    case_manager_id integer,
    old_grant numeric(8,2),
    max_benefit numeric(8,2),
    grant_amount numeric(8,2),
    income_limit numeric(8,2),
    def_excess numeric(8,2),
    total_income numeric(8,2),
    gross_earned_income numeric(8,2),
    deducted_amount numeric(8,2),
    child_care_amount numeric(8,2),
    exclusions_amount numeric(8,2),
    net_earned_income numeric(8,2),
    contributions numeric(8,2),
    va_pen numeric(8,2),
    va_comp numeric(8,2),
    va_aa numeric(8,2),
    ssa_bud numeric(8,2),
    ssi_bud numeric(8,2),
    rail_road_retirement numeric(8,2),
    steppar_income numeric(8,2),
    other_unearned_income numeric(8,2),
    total_unearned_income numeric(8,2),
    unearned_exclusion numeric(8,2),
    net_unearned_income numeric(8,2),
    net_countable_income numeric(8,2),
    program_wizard_id integer,
    reference_type integer
);


--
-- Name: notice_generations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notice_generations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notice_generations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notice_generations_id_seq OWNED BY notice_generations.id;


--
-- Name: notice_texts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notice_texts (
    id bigint NOT NULL,
    service_program_id integer,
    action_type integer,
    action_reason integer,
    flag1 boolean,
    flag2 boolean,
    notice_text text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: notice_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notice_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notice_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notice_texts_id_seq OWNED BY notice_texts.id;


--
-- Name: out_of_state_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE out_of_state_payments (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    payment_month date NOT NULL,
    work_participation_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    state integer
);


--
-- Name: out_of_state_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE out_of_state_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: out_of_state_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE out_of_state_payments_id_seq OWNED BY out_of_state_payments.id;


--
-- Name: outcomes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE outcomes (
    id bigint NOT NULL,
    outcome_entity integer,
    reference_id integer,
    outcome_code integer,
    notes text,
    recorded_worker character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: outcomes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE outcomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: outcomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE outcomes_id_seq OWNED BY outcomes.id;


--
-- Name: outcomes_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE outcomes_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: outcomes_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE outcomes_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: outcomes_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE outcomes_versions_id_seq OWNED BY outcomes_versions.id;


--
-- Name: outofstate_payments_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE outofstate_payments_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: outofstate_payments_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE outofstate_payments_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: outofstate_payments_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE outofstate_payments_versions_id_seq OWNED BY outofstate_payments_versions.id;


--
-- Name: payment_line_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE payment_line_items (
    id bigint NOT NULL,
    line_item_type integer NOT NULL,
    payment_type integer NOT NULL,
    client_id integer NOT NULL,
    beneficiary integer NOT NULL,
    reference_id integer NOT NULL,
    payment_amount numeric(8,2) NOT NULL,
    payment_date date NOT NULL,
    payment_status integer NOT NULL,
    determination_id integer NOT NULL,
    status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    aasis_warrant_number character varying,
    paid_date date,
    program_unit_id integer
);


--
-- Name: payment_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE payment_line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE payment_line_items_id_seq OWNED BY payment_line_items.id;


--
-- Name: payment_line_items_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE payment_line_items_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: payment_line_items_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE payment_line_items_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_line_items_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE payment_line_items_versions_id_seq OWNED BY payment_line_items_versions.id;


--
-- Name: pgu_actions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pgu_actions (
    id bigint NOT NULL,
    program_unit_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: pgu_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pgu_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pgu_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pgu_actions_id_seq OWNED BY pgu_actions.id;


--
-- Name: pgu_actions_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pgu_actions_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: pgu_actions_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pgu_actions_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pgu_actions_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pgu_actions_versions_id_seq OWNED BY pgu_actions_versions.id;


--
-- Name: pgu_task_owners_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pgu_task_owners_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: pgu_task_owners_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pgu_task_owners_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pgu_task_owners_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pgu_task_owners_versions_id_seq OWNED BY pgu_task_owners_versions.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE phones (
    id bigint NOT NULL,
    phone_type integer,
    phone_number character varying(10),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE phones_id_seq OWNED BY phones.id;


--
-- Name: phones_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE phones_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: phones_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE phones_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phones_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE phones_versions_id_seq OWNED BY phones_versions.id;


--
-- Name: potential_intake_clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE potential_intake_clients (
    id bigint NOT NULL,
    first_name character varying(35) NOT NULL,
    last_name character varying(35) NOT NULL,
    date_of_birth date,
    ssn character varying(9),
    intake_status character varying(1),
    prescreen_household_id integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: potential_intake_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE potential_intake_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: potential_intake_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE potential_intake_clients_id_seq OWNED BY potential_intake_clients.id;


--
-- Name: pregnancies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pregnancies (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    pregnancy_status character varying(1) DEFAULT 'Y'::character varying,
    pregnancy_due_date date NOT NULL,
    number_of_unborn integer NOT NULL,
    pregnancy_termination_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: pregnancies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pregnancies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pregnancies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pregnancies_id_seq OWNED BY pregnancies.id;


--
-- Name: pregnancy_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pregnancy_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: pregnancy_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE pregnancy_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pregnancy_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE pregnancy_versions_id_seq OWNED BY pregnancy_versions.id;


--
-- Name: prescreen_assessment_answers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescreen_assessment_answers (
    id bigint NOT NULL,
    prescreen_household_id integer NOT NULL,
    assessment_question_id integer,
    answer_value character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: prescreen_assessment_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescreen_assessment_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescreen_assessment_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescreen_assessment_answers_id_seq OWNED BY prescreen_assessment_answers.id;


--
-- Name: prescreen_household_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescreen_household_members (
    id bigint NOT NULL,
    prescreen_household_id bigint NOT NULL,
    first_name character varying(35) NOT NULL,
    last_name character varying(35) NOT NULL,
    citizenship_flag character varying(1) NOT NULL,
    residency_flag character varying(1) NOT NULL,
    highest_education_grade_completed integer,
    primary_member_flag character varying(1) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    relation_to_primary_member integer,
    date_of_birth date,
    middle_name character varying(35),
    suffix character varying(4),
    ssn character varying(9),
    gender integer,
    marital_status integer,
    identification_type integer,
    primary_language integer,
    pra_accept character varying(1),
    disabled_flag character varying(1),
    veteran_flag character varying(1),
    pregnancy_flag character varying(1),
    attending_school integer,
    caretaker_flag character varying(1)
);


--
-- Name: prescreen_household_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescreen_household_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescreen_household_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescreen_household_members_id_seq OWNED BY prescreen_household_members.id;


--
-- Name: prescreen_household_q_answers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescreen_household_q_answers (
    id bigint NOT NULL,
    prescreen_household_id bigint NOT NULL,
    question_category_id integer NOT NULL,
    question_id integer NOT NULL,
    answer_flag character varying(1),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: prescreen_household_q_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescreen_household_q_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescreen_household_q_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescreen_household_q_answers_id_seq OWNED BY prescreen_household_q_answers.id;


--
-- Name: prescreen_household_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescreen_household_results (
    id bigint NOT NULL,
    prescreen_household_id bigint NOT NULL,
    service_program_category_id integer NOT NULL,
    result_description character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: prescreen_household_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescreen_household_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescreen_household_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescreen_household_results_id_seq OWNED BY prescreen_household_results.id;


--
-- Name: prescreen_households; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescreen_households (
    id bigint NOT NULL,
    household_name character varying(35),
    household_earned_income_amount numeric(8,2),
    household_unearned_income_amount numeric(8,2),
    household_expense_amount numeric(8,2),
    household_resource_amount numeric(8,2),
    child_care_benefit_amount numeric(8,2),
    housing_benefit_amount numeric(8,2),
    child_support_benefit_amount numeric(8,2),
    student_sholarship_grant_benefit_amount numeric(8,2),
    snap_benefit_amount numeric(8,2),
    ssi_benefit_amount numeric(8,2),
    transportation_benefit_amount numeric(8,2),
    veterans_benefit_amount numeric(8,2),
    tanf_benefit_amount numeric(8,2),
    receiving_medicaid_flag character varying(1),
    other_non_govt_beneft_details character varying(250),
    phone character varying(10),
    email_address character varying(50),
    address_line1 character varying(50),
    address_line2 character varying(50),
    city character varying(50),
    state integer,
    zip character varying(5),
    notes character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    intake_worker character varying,
    processing_location integer,
    ui_benefit_amount numeric(8,2)
);


--
-- Name: prescreen_households_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescreen_households_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescreen_households_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescreen_households_id_seq OWNED BY prescreen_households.id;


--
-- Name: primary_contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE primary_contacts (
    id bigint NOT NULL,
    reference_id integer NOT NULL,
    reference_type integer NOT NULL,
    client_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: primary_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE primary_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: primary_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE primary_contacts_id_seq OWNED BY primary_contacts.id;


--
-- Name: program_benefit_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_benefit_details (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    eligibility_gross_earned numeric(8,2),
    eligibility_work_deduct numeric(8,2),
    eligibility_incent_deduct numeric(8,2),
    eligibility_net_income numeric(8,2),
    eligibility_tot_unearned numeric(8,2),
    eligibility_tot_adjusted numeric(8,2),
    benefit_gross_earned numeric(8,2),
    benefit_work_deduction numeric(8,2),
    benefit_incent_deduct numeric(8,2),
    benefit_net_income numeric(8,2),
    benefit_total_unearned numeric(8,2),
    benefit_total_adjusted numeric(8,2),
    full_benefit numeric(8,2),
    reduction numeric(8,2),
    sanction numeric(8,2),
    program_benefit_amount numeric(8,2),
    social_security_admin_amt numeric(8,2),
    railroad_ret_amt numeric(8,2),
    vet_asst_amt numeric(8,2),
    other_unearned_inc numeric(8,2),
    program_income_limit numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    program_wizard_id integer NOT NULL,
    sanction_indicator integer,
    reimbursed_amount numeric(8,2)
);


--
-- Name: program_benefit_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_benefit_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_benefit_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_benefit_details_id_seq OWNED BY program_benefit_details.id;


--
-- Name: program_benefit_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_benefit_members (
    id bigint NOT NULL,
    program_wizard_id bigint NOT NULL,
    client_id integer NOT NULL,
    member_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    member_sequence integer NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL
);


--
-- Name: program_benefit_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_benefit_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_benefit_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_benefit_members_id_seq OWNED BY program_benefit_members.id;


--
-- Name: program_benft_detl_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_benft_detl_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_benft_detl_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_benft_detl_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_benft_detl_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_benft_detl_versions_id_seq OWNED BY program_benft_detl_versions.id;


--
-- Name: program_benft_membr_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_benft_membr_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_benft_membr_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_benft_membr_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_benft_membr_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_benft_membr_versions_id_seq OWNED BY program_benft_membr_versions.id;


--
-- Name: program_member_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_member_details (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    b_details_sequence integer,
    bdm_row_indicator character varying(1),
    item_type integer,
    item_source character varying(50),
    dollar_amount numeric(8,2),
    item_countable text,
    calc_method_code integer,
    last_calc_month date,
    lastcalc_incexp_id integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    program_member_summary_id integer,
    inc_exp_res_indicator character varying(1)
);


--
-- Name: program_member_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_member_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_member_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_member_details_id_seq OWNED BY program_member_details.id;


--
-- Name: program_member_summaries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_member_summaries (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    member_sequence integer NOT NULL,
    tot_earned_inc numeric(8,2),
    tot_unearned_inc numeric(8,2),
    tot_expenses numeric(8,2),
    tot_resources numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    program_benefit_member_id integer,
    unmet_liability numeric(8,2),
    supl_sec_income_amount numeric(8,2),
    social_security_admin_amt numeric(8,2),
    railroad_ret_amt numeric(8,2),
    vet_asst_amt numeric(8,2),
    other_unearned_inc numeric(8,2),
    eligibility_work_deduct numeric(8,2),
    eligibility_incent_deduct numeric(8,2),
    earned_income_deduct numeric(8,2),
    child_care_deduct numeric(8,2)
);


--
-- Name: program_member_summaries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_member_summaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_member_summaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_member_summaries_id_seq OWNED BY program_member_summaries.id;


--
-- Name: program_membr_detil_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_membr_detil_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_membr_detil_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_membr_detil_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_membr_detil_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_membr_detil_versions_id_seq OWNED BY program_membr_detil_versions.id;


--
-- Name: program_month_summaries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_month_summaries (
    id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    tot_earned_inc numeric(8,2),
    tot_unearned_inc numeric(8,2),
    tot_expenses numeric(8,2),
    tot_resources numeric(8,2),
    bu_sum_result numeric(8,2),
    res_pass_fail_ind character varying(1),
    budget_eligible_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    program_unit_size integer,
    program_wizard_id integer NOT NULL
);


--
-- Name: program_month_summaries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_month_summaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_month_summaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_month_summaries_id_seq OWNED BY program_month_summaries.id;


--
-- Name: program_standard_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_standard_details (
    id bigint NOT NULL,
    program_standard_id bigint NOT NULL,
    effective_date date NOT NULL,
    program_standard_limit_amount numeric(8,2),
    program_standard_max_shelter numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_standard_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_standard_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_standard_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_standard_details_id_seq OWNED BY program_standard_details.id;


--
-- Name: program_standards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_standards (
    id bigint NOT NULL,
    program_standard_name text,
    program_standard_description text,
    program_standard_unit_of_measurement character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_standards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_standards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_standards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_standards_id_seq OWNED BY program_standards.id;


--
-- Name: program_unit_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_members (
    id bigint NOT NULL,
    program_unit_id bigint NOT NULL,
    client_id integer NOT NULL,
    member_status integer,
    member_of_application character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    primary_beneficiary character varying(1)
);


--
-- Name: program_unit_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_members_id_seq OWNED BY program_unit_members.id;


--
-- Name: program_unit_membr_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_membr_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_unit_membr_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_membr_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_membr_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_membr_versions_id_seq OWNED BY program_unit_membr_versions.id;


--
-- Name: program_unit_partcpatn_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_partcpatn_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_unit_partcpatn_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_partcpatn_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_partcpatn_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_partcpatn_versions_id_seq OWNED BY program_unit_partcpatn_versions.id;


--
-- Name: program_unit_participations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_participations (
    id bigint NOT NULL,
    program_unit_id bigint NOT NULL,
    participation_status integer,
    status_date date,
    action_date date,
    reason integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_unit_participations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_participations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_participations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_participations_id_seq OWNED BY program_unit_participations.id;


--
-- Name: program_unit_representatives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_representatives (
    id bigint NOT NULL,
    program_unit_id bigint NOT NULL,
    client_id bigint NOT NULL,
    representative_type integer NOT NULL,
    status integer,
    start_date date,
    end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_unit_representatives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_representatives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_representatives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_representatives_id_seq OWNED BY program_unit_representatives.id;


--
-- Name: program_unit_reprztatv_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_reprztatv_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_unit_reprztatv_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_reprztatv_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_reprztatv_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_reprztatv_versions_id_seq OWNED BY program_unit_reprztatv_versions.id;


--
-- Name: program_unit_size_standard_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_size_standard_details (
    id bigint NOT NULL,
    effective_date date,
    standard_type character varying,
    program_unit_size integer,
    program_limit_amount numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_unit_size_standard_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_size_standard_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_size_standard_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_size_standard_details_id_seq OWNED BY program_unit_size_standard_details.id;


--
-- Name: program_unit_size_standards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_size_standards (
    id bigint NOT NULL,
    effective_date date,
    standard_type character varying,
    percent_of_grant numeric(5,2),
    addtl_member_amt numeric(8,2),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_unit_size_standards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_size_standards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_size_standards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_size_standards_id_seq OWNED BY program_unit_size_standards.id;


--
-- Name: program_unit_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_state_transitions (
    id bigint NOT NULL,
    program_unit_id integer,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    reason character varying
);


--
-- Name: program_unit_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_state_transitions_id_seq OWNED BY program_unit_state_transitions.id;


--
-- Name: program_unit_task_owners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_unit_task_owners (
    id bigint NOT NULL,
    program_unit_id integer NOT NULL,
    ownership_type integer NOT NULL,
    ownership_user_id character varying NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_unit_task_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_unit_task_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_unit_task_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_unit_task_owners_id_seq OWNED BY program_unit_task_owners.id;


--
-- Name: program_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_units (
    id bigint NOT NULL,
    client_application_id bigint NOT NULL,
    service_program_id integer NOT NULL,
    processing_location integer,
    certfication_begin_date date,
    certfication_end_date date,
    disposition_status integer,
    disposition_reason integer,
    disposition_date timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    program_unit_status integer,
    case_type integer,
    reeval_date date,
    case_manager_id character varying,
    disposed_by integer,
    state integer,
    reason character varying,
    eligibility_worker_id character varying,
    eligible_for_planning character(1),
    deny_notice_generation_flag character(1)
);


--
-- Name: program_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_units_id_seq OWNED BY program_units.id;


--
-- Name: program_units_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_units_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_units_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_units_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_units_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_units_versions_id_seq OWNED BY program_units_versions.id;


--
-- Name: program_wizard_reasons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_wizard_reasons (
    id bigint NOT NULL,
    program_wizard_id bigint NOT NULL,
    client_id bigint,
    reason integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: program_wizard_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_wizard_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_wizard_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_wizard_reasons_id_seq OWNED BY program_wizard_reasons.id;


--
-- Name: program_wizard_run_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_wizard_run_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_wizards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_wizards (
    id bigint NOT NULL,
    program_unit_id bigint NOT NULL,
    run_id integer NOT NULL,
    month_sequence integer NOT NULL,
    run_month date NOT NULL,
    no_of_months integer,
    retain_ind character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    submit_date timestamp without time zone,
    case_type integer,
    selected_for_planning character(1)
);


--
-- Name: program_wizards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_wizards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_wizards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_wizards_id_seq OWNED BY program_wizards.id;


--
-- Name: program_wizards_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE program_wizards_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: program_wizards_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE program_wizards_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: program_wizards_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE program_wizards_versions_id_seq OWNED BY program_wizards_versions.id;


--
-- Name: provider_agreement_area_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_agreement_area_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_agreement_area_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_agreement_area_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_agreement_area_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_agreement_area_versions_id_seq OWNED BY provider_agreement_area_versions.id;


--
-- Name: provider_agreement_areas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_agreement_areas (
    id bigint NOT NULL,
    provider_agreement_id bigint NOT NULL,
    served_county integer,
    served_area_zip character varying(5),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    served_local_office_id integer
);


--
-- Name: provider_agreement_areas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_agreement_areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_agreement_areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_agreement_areas_id_seq OWNED BY provider_agreement_areas.id;


--
-- Name: provider_agreement_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_agreement_state_transitions (
    id bigint NOT NULL,
    provider_agreement_id integer,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    reason character varying
);


--
-- Name: provider_agreement_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_agreement_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_agreement_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_agreement_state_transitions_id_seq OWNED BY provider_agreement_state_transitions.id;


--
-- Name: provider_agreements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_agreements (
    id bigint NOT NULL,
    provider_id bigint NOT NULL,
    provider_service_id bigint NOT NULL,
    dws_local_office_id integer,
    agreement_created_by character varying,
    agreement_start_date date NOT NULL,
    agreement_end_date date NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    termination_reason character varying,
    termination_date date,
    reason character varying,
    state integer,
    agreement_reviewer_id character varying
);


--
-- Name: provider_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_agreements_id_seq OWNED BY provider_agreements.id;


--
-- Name: provider_agreements_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_agreements_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_agreements_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_agreements_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_agreements_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_agreements_versions_id_seq OWNED BY provider_agreements_versions.id;


--
-- Name: provider_app_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_app_users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    uid character varying,
    string character varying,
    organisation_slug character varying,
    organisation_content_id character varying,
    permissions character varying[],
    remotely_signed_out boolean DEFAULT true,
    disabled boolean DEFAULT true,
    created_by character varying,
    updated_by character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: provider_app_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_app_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_app_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_app_users_id_seq OWNED BY provider_app_users.id;


--
-- Name: provider_area_avail_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_area_avail_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_area_avail_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_area_avail_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_area_avail_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_area_avail_versions_id_seq OWNED BY provider_area_avail_versions.id;


--
-- Name: provider_invoice_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_invoice_histories (
    id bigint NOT NULL,
    provider_id bigint NOT NULL,
    invoice_date date NOT NULL,
    invoice_amount numeric(8,2),
    invoice_notes character varying,
    invoice_status integer,
    invoice_created_by character varying NOT NULL,
    invoice_updated_by character varying NOT NULL,
    invoice_created_at timestamp without time zone NOT NULL,
    invoice_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: provider_invoice_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_invoice_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_invoice_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_invoice_histories_id_seq OWNED BY provider_invoice_histories.id;


--
-- Name: provider_invoice_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_invoice_state_transitions (
    id bigint NOT NULL,
    provider_invoice_id integer,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    reason character varying
);


--
-- Name: provider_invoice_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_invoice_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_invoice_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_invoice_state_transitions_id_seq OWNED BY provider_invoice_state_transitions.id;


--
-- Name: provider_invoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_invoices (
    id bigint NOT NULL,
    provider_id bigint NOT NULL,
    invoice_date date NOT NULL,
    invoice_amount numeric(8,2),
    invoice_notes character varying,
    invoice_status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    provider_invoice character varying(255),
    state integer,
    reason character varying,
    payment_reviewer_id character varying,
    service_authorization_id integer,
    payment_approver_id character varying
);


--
-- Name: provider_invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_invoices_id_seq OWNED BY provider_invoices.id;


--
-- Name: provider_invoices_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_invoices_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_invoices_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_invoices_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_invoices_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_invoices_versions_id_seq OWNED BY provider_invoices_versions.id;


--
-- Name: provider_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_languages (
    id bigint NOT NULL,
    provider_id integer,
    language_type integer,
    start_date date,
    end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: provider_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_languages_id_seq OWNED BY provider_languages.id;


--
-- Name: provider_languages_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_languages_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_languages_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_languages_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_languages_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_languages_versions_id_seq OWNED BY provider_languages_versions.id;


--
-- Name: provider_service_area_availabilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_service_area_availabilities (
    id bigint NOT NULL,
    provider_service_area_id integer NOT NULL,
    day_of_the_week integer NOT NULL,
    start_time time without time zone,
    end_time time without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: provider_service_area_availabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_service_area_availabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_service_area_availabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_service_area_availabilities_id_seq OWNED BY provider_service_area_availabilities.id;


--
-- Name: provider_service_area_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_service_area_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_service_area_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_service_area_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_service_area_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_service_area_versions_id_seq OWNED BY provider_service_area_versions.id;


--
-- Name: provider_service_areas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_service_areas (
    id bigint NOT NULL,
    provider_service_id bigint NOT NULL,
    area_zip character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    served_county integer,
    local_office_id integer NOT NULL
);


--
-- Name: provider_service_areas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_service_areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_service_areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_service_areas_id_seq OWNED BY provider_service_areas.id;


--
-- Name: provider_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_services (
    id bigint NOT NULL,
    provider_id bigint NOT NULL,
    service_type integer NOT NULL,
    service_units integer,
    start_date date NOT NULL,
    end_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    occupation character varying(255),
    occupation_desc character varying(255)
);


--
-- Name: provider_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_services_id_seq OWNED BY provider_services.id;


--
-- Name: provider_services_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE provider_services_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: provider_services_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE provider_services_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: provider_services_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE provider_services_versions_id_seq OWNED BY provider_services_versions.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE providers (
    id bigint NOT NULL,
    provider_name character varying(50),
    provider_type integer,
    contact_person character varying(50),
    provider_country_code integer,
    classification integer,
    license_number character varying(20),
    license_expire_dt date,
    tax_id_ssn character varying(9),
    email_address character varying(50),
    web_address character varying(100),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    provider_pager_number integer,
    w9_sign_date date,
    notes text,
    status integer,
    status_date date,
    head_office_provider_id integer,
    provider_registered_office integer,
    intake_worker_id character varying,
    fms_reviewer_id character varying
);


--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE providers_id_seq OWNED BY providers.id;


--
-- Name: providers_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE providers_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: providers_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE providers_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: providers_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE providers_versions_id_seq OWNED BY providers_versions.id;


--
-- Name: recommendations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE recommendations (
    id bigint NOT NULL,
    recommendation_text text NOT NULL,
    comments text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: recommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recommendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recommendations_id_seq OWNED BY recommendations.id;


--
-- Name: resource_adjustments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_adjustments (
    id bigint NOT NULL,
    resource_detail_id bigint,
    resource_adj_amt numeric(8,2),
    receipt_date date,
    reason_code integer,
    adj_begin_date date,
    adj_end_date date,
    adj_num_of_months integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: resource_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_adjustments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_adjustments_id_seq OWNED BY resource_adjustments.id;


--
-- Name: resource_adjustments_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_adjustments_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: resource_adjustments_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_adjustments_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_adjustments_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_adjustments_versions_id_seq OWNED BY resource_adjustments_versions.id;


--
-- Name: resource_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_details (
    id bigint NOT NULL,
    resource_id bigint,
    resource_value numeric(8,2),
    resource_valued_date date,
    first_of_month_value numeric(8,2),
    res_value_basis integer,
    res_ins_face_value numeric(8,2),
    amount_owned_on_resource numeric(8,2),
    amount_owned_as_of_date date,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: resource_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_details_id_seq OWNED BY resource_details.id;


--
-- Name: resource_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: resource_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_details_versions_id_seq OWNED BY resource_details_versions.id;


--
-- Name: resource_uses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_uses (
    id bigint NOT NULL,
    resource_details_id bigint NOT NULL,
    usage_code integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: resource_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_uses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_uses_id_seq OWNED BY resource_uses.id;


--
-- Name: resource_uses_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resource_uses_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: resource_uses_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resource_uses_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_uses_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resource_uses_versions_id_seq OWNED BY resource_uses_versions.id;


--
-- Name: resources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resources (
    id bigint NOT NULL,
    resource_type integer NOT NULL,
    net_value numeric(8,2),
    description character varying(50),
    date_value_determined date,
    date_assert_acquired date,
    date_assert_disposed date,
    verified character varying(1),
    account_number character varying(12),
    use_code numeric(5,2),
    number_of_owners integer,
    license_number character varying(10),
    make character varying(20),
    model character varying(20),
    year character varying(4),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: resources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resources_id_seq OWNED BY resources.id;


--
-- Name: resources_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE resources_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: resources_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE resources_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resources_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE resources_versions_id_seq OWNED BY resources_versions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE roles (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_by_user_id character varying,
    updated_by_user_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: ruby_element_reltns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ruby_element_reltns (
    id bigint NOT NULL,
    parent_element_id integer,
    child_element_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    child_order integer
);


--
-- Name: ruby_element_reltns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ruby_element_reltns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ruby_element_reltns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ruby_element_reltns_id_seq OWNED BY ruby_element_reltns.id;


--
-- Name: ruby_elements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ruby_elements (
    id bigint NOT NULL,
    element_name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    element_title character varying(50),
    element_type integer,
    element_microhelp character varying,
    element_help_page character varying,
    created_by_user_id character varying,
    updated_by_user_id character varying,
    parent_flag character(1),
    parent_order integer,
    description character varying
);


--
-- Name: ruby_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ruby_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ruby_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ruby_elements_id_seq OWNED BY ruby_elements.id;


--
-- Name: rule_adjustments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_adjustments (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    rule_grouping_id integer,
    code_table_id integer,
    codetable_items_id integer,
    adjust_value integer,
    as_resource_ind text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_adjustments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_adjustments_id_seq OWNED BY rule_adjustments.id;


--
-- Name: rule_date_param_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_date_param_details (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    rule_grouping_id integer,
    code_table_id integer,
    date_add_substract integer,
    date_modifier_code integer,
    date_rounding_code integer,
    date_status_code integer,
    date_user_fixed date,
    date_unique_ind text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_date_param_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_date_param_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_date_param_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_date_param_details_id_seq OWNED BY rule_date_param_details.id;


--
-- Name: rule_date_params; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_date_params (
    id bigint NOT NULL,
    code_table_id integer,
    codetable_item_id integer,
    description text,
    domain_id integer,
    datetype_conversion text,
    correspdate_value integer,
    uniqueness_ind text,
    business_objects text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_date_params_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_date_params_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_date_params_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_date_params_id_seq OWNED BY rule_date_params.id;


--
-- Name: rule_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_details (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    rule_grouping_id integer,
    code_table_id integer,
    codetable_items_id integer,
    criteria_a_ind text,
    criteria_b_ind text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_details_id_seq OWNED BY rule_details.id;


--
-- Name: rule_disallows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_disallows (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    rule_grouping_id integer,
    code_table_id integer,
    codetable_items_id integer,
    disregard_value integer,
    disregard_amt_code integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_disallows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_disallows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_disallows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_disallows_id_seq OWNED BY rule_disallows.id;


--
-- Name: rule_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rule_results (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    client_id bigint NOT NULL,
    service_program_id integer,
    member_client_id integer,
    rule_type integer,
    rule_category integer,
    execution_date date,
    execution_results integer,
    srvc_prog_result integer,
    client_results integer,
    information_used text,
    service_program_type integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rule_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rule_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rule_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rule_results_id_seq OWNED BY rule_results.id;


--
-- Name: rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rules (
    id bigint NOT NULL,
    class_name text,
    description text,
    rule_title text,
    rule_type integer,
    rule_criteria integer,
    rule_operator integer,
    rule_operand integer,
    usage integer,
    rule_freq_type integer,
    rule_standard_type integer,
    rule_second_operator integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rules_id_seq OWNED BY rules.id;


--
-- Name: sanction_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sanction_details (
    id bigint NOT NULL,
    sanction_id bigint NOT NULL,
    effective_begin_date date,
    sanction_month date,
    duration integer,
    modified_month date,
    sanction_indicator integer,
    release_indicatior character varying(1),
    sanction_served character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: sanction_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sanction_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanction_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sanction_details_id_seq OWNED BY sanction_details.id;


--
-- Name: sanction_details_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sanction_details_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: sanction_details_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sanction_details_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanction_details_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sanction_details_versions_id_seq OWNED BY sanction_details_versions.id;


--
-- Name: sanctions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sanctions (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    service_program_id bigint NOT NULL,
    sanction_type integer NOT NULL,
    description character varying(255),
    mytodolist_indicator character varying(1),
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    infraction_begin_date date,
    infraction_end_date date,
    compliance_office_id character varying
);


--
-- Name: sanctions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sanctions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanctions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sanctions_id_seq OWNED BY sanctions.id;


--
-- Name: sanctions_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sanctions_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: sanctions_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sanctions_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanctions_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sanctions_versions_id_seq OWNED BY sanctions_versions.id;


--
-- Name: schedule_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schedule_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    entity integer,
    reference_id integer,
    day_of_week integer[],
    time_of_day time without time zone,
    duration integer,
    recurring integer,
    action_plan_schedule_created_by character varying,
    action_plan_schedule_updated_by character varying,
    action_plan_schedule_created_at timestamp without time zone,
    action_plan_schedule_updated_at timestamp without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_primary_key_id integer
);


--
-- Name: schedule_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schedule_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedule_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schedule_cpp_snapshots_id_seq OWNED BY schedule_cpp_snapshots.id;


--
-- Name: schedule_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schedule_extensions (
    id bigint NOT NULL,
    schedule_id bigint NOT NULL,
    extension_duration integer NOT NULL,
    extension_reason character varying NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schedule_extensions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schedule_extensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedule_extensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schedule_extensions_id_seq OWNED BY schedule_extensions.id;


--
-- Name: schedule_extensions_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schedule_extensions_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: schedule_extensions_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schedule_extensions_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedule_extensions_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schedule_extensions_versions_id_seq OWNED BY schedule_extensions_versions.id;


--
-- Name: schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schedules (
    id bigint NOT NULL,
    entity integer,
    reference_id integer,
    day_of_week integer[],
    time_of_day time without time zone,
    duration integer,
    recurring integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schedules_id_seq OWNED BY schedules.id;


--
-- Name: schedules_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schedules_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: schedules_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schedules_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedules_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schedules_versions_id_seq OWNED BY schedules_versions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: schools; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schools (
    id bigint NOT NULL,
    school_type integer NOT NULL,
    school_name character varying NOT NULL,
    web_address character varying(100),
    email_address character varying(50),
    contact_notes character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schools_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schools_id_seq OWNED BY schools.id;


--
-- Name: schools_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schools_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: schools_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE schools_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schools_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE schools_versions_id_seq OWNED BY schools_versions.id;


--
-- Name: screening_engines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE screening_engines (
    id bigint NOT NULL,
    rule_id bigint NOT NULL,
    effective_begin_date date,
    rule_category integer,
    service_program_id integer,
    effective_end_date date,
    rule_set_type integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: screening_engines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE screening_engines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: screening_engines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE screening_engines_id_seq OWNED BY screening_engines.id;


--
-- Name: screening_ineligible_codes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE screening_ineligible_codes (
    id bigint NOT NULL,
    application_id integer NOT NULL,
    service_program integer NOT NULL,
    ineligible_codes integer[] NOT NULL,
    created_by integer NOT NULL,
    updated_by integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: screening_ineligible_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE screening_ineligible_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: screening_ineligible_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE screening_ineligible_codes_id_seq OWNED BY screening_ineligible_codes.id;


--
-- Name: seriz_auth_line_items_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE seriz_auth_line_items_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: seriz_auth_line_items_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seriz_auth_line_items_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seriz_auth_line_items_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE seriz_auth_line_items_versions_id_seq OWNED BY seriz_auth_line_items_versions.id;


--
-- Name: service_authorization_cpp_snapshots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorization_cpp_snapshots (
    id bigint NOT NULL,
    career_pathway_plan_id integer NOT NULL,
    parent_primary_key_id integer NOT NULL,
    provider_id integer NOT NULL,
    program_unit_id integer NOT NULL,
    client_id integer NOT NULL,
    service_start_date date,
    service_end_date date,
    trip_start_address_line1 character varying(50),
    trip_start_address_line2 character varying(50),
    trip_start_address_city character varying(50),
    trip_start_address_state integer,
    trip_start_address_zip character varying(5),
    trip_end_address_line1 character varying(50),
    trip_end_address_line2 character varying(50),
    trip_end_address_city character varying(50),
    trip_end_address_state integer,
    trip_end_address_zip character varying(5),
    outcome_achieved integer,
    status integer,
    service_type integer,
    supportive_service_flag character varying(1),
    service_date date,
    action_plan_detail_id integer,
    barrier_id integer,
    notes text,
    client_agreement_date date,
    service_authorization_created_by character varying NOT NULL,
    service_authorization_updated_by character varying NOT NULL,
    service_authorization_created_at timestamp without time zone NOT NULL,
    service_authorization_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_authorization_cpp_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorization_cpp_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorization_cpp_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorization_cpp_snapshots_id_seq OWNED BY service_authorization_cpp_snapshots.id;


--
-- Name: service_authorization_line_item_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorization_line_item_histories (
    id bigint NOT NULL,
    service_authorization_id integer NOT NULL,
    service_date date NOT NULL,
    service_begin_time time without time zone,
    service_end_time time without time zone,
    trip_start_address_line1 character varying(50),
    trip_start_address_line2 character varying(50),
    trip_start_address_city character varying(50),
    trip_start_address_state integer,
    trip_start_address_zip character varying(5),
    trip_end_address_line1 character varying(50),
    trip_end_address_line2 character varying(50),
    trip_end_address_city character varying(50),
    trip_end_address_state integer,
    trip_end_address_zip character varying(5),
    quantity integer,
    unit_of_measure integer,
    estimated_cost numeric(8,2),
    actual_cost numeric(8,2),
    override_reason character varying,
    status integer,
    provider_invoice character varying,
    notes text,
    service_authorization_created_by character varying NOT NULL,
    service_authorization_updated_by character varying NOT NULL,
    service_authorization_created_at timestamp without time zone NOT NULL,
    service_authorization_updated_at timestamp without time zone NOT NULL,
    created_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_authorization_line_item_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorization_line_item_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorization_line_item_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorization_line_item_histories_id_seq OWNED BY service_authorization_line_item_histories.id;


--
-- Name: service_authorization_line_item_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorization_line_item_state_transitions (
    id bigint NOT NULL,
    service_authorization_line_item_id integer,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    reason character varying
);


--
-- Name: service_authorization_line_item_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorization_line_item_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorization_line_item_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorization_line_item_state_transitions_id_seq OWNED BY service_authorization_line_item_state_transitions.id;


--
-- Name: service_authorization_line_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorization_line_items (
    id bigint NOT NULL,
    service_authorization_id integer NOT NULL,
    service_date date NOT NULL,
    service_begin_time time without time zone,
    service_end_time time without time zone,
    trip_start_address_line1 character varying(50),
    trip_start_address_line2 character varying(50),
    trip_start_address_city character varying(50),
    trip_start_address_state integer,
    trip_start_address_zip character varying(5),
    trip_end_address_line1 character varying(50),
    trip_end_address_line2 character varying(50),
    trip_end_address_city character varying(50),
    trip_end_address_state integer,
    trip_end_address_zip character varying(5),
    quantity numeric(8,2),
    unit_of_measure integer,
    estimated_cost numeric(8,2),
    actual_cost numeric(8,2),
    override_reason character varying,
    provider_invoice character varying,
    notes text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    line_item_status integer,
    actual_quantity numeric(8,2),
    provider_invoice_id integer,
    reason character varying,
    state integer
);


--
-- Name: service_authorization_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorization_line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorization_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorization_line_items_id_seq OWNED BY service_authorization_line_items.id;


--
-- Name: service_authorization_line_items_invoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorization_line_items_invoices (
    id bigint NOT NULL,
    provider_invoice_id integer NOT NULL,
    service_authorization_line_item_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_authorization_line_items_invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorization_line_items_invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorization_line_items_invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorization_line_items_invoices_id_seq OWNED BY service_authorization_line_items_invoices.id;


--
-- Name: service_authorizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorizations (
    id bigint NOT NULL,
    provider_id integer,
    program_unit_id bigint NOT NULL,
    client_id bigint NOT NULL,
    service_start_date date,
    service_end_date date,
    trip_start_address_line1 character varying(50),
    trip_start_address_line2 character varying(50),
    trip_start_address_city character varying(50),
    trip_start_address_state integer,
    trip_start_address_zip character varying(5),
    trip_end_address_line1 character varying(50),
    trip_end_address_line2 character varying(50),
    trip_end_address_city character varying(50),
    trip_end_address_state integer,
    trip_end_address_zip character varying(5),
    outcome_achieved integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status integer,
    service_type integer,
    supportive_service_flag character(1),
    service_date date,
    action_plan_detail_id integer,
    barrier_id integer,
    notes text,
    client_agreement_date date
);


--
-- Name: service_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorizations_id_seq OWNED BY service_authorizations.id;


--
-- Name: service_authorizations_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_authorizations_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: service_authorizations_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_authorizations_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_authorizations_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_authorizations_versions_id_seq OWNED BY service_authorizations_versions.id;


--
-- Name: service_programs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_programs (
    id bigint NOT NULL,
    description character varying(250) NOT NULL,
    title character varying(35) NOT NULL,
    service_type integer,
    usage_type integer,
    schedule_courses character varying(1),
    auto_referral_task character varying(1),
    sanction_indicator character varying(1),
    svc_pgm_category integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_programs_id_seq OWNED BY service_programs.id;


--
-- Name: service_programs_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_programs_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: service_programs_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_programs_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_programs_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_programs_versions_id_seq OWNED BY service_programs_versions.id;


--
-- Name: service_schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_schedules (
    id bigint NOT NULL,
    service_authorization_id bigint NOT NULL,
    trip_day integer NOT NULL,
    trip_pick_up_time time without time zone,
    return_trip_pick_up_time time without time zone,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_schedules_id_seq OWNED BY service_schedules.id;


--
-- Name: service_schedules_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_schedules_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: service_schedules_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_schedules_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_schedules_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_schedules_versions_id_seq OWNED BY service_schedules_versions.id;


--
-- Name: ssn_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ssn_seq
    START WITH 900100008
    INCREMENT BY 1
    MINVALUE 900100001
    NO MAXVALUE
    CACHE 1;


--
-- Name: standard_recommendations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE standard_recommendations (
    id bigint NOT NULL,
    barrier_id integer NOT NULL,
    recommendation_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: standard_recommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE standard_recommendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: standard_recommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE standard_recommendations_id_seq OWNED BY standard_recommendations.id;


--
-- Name: supl_retro_bns_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE supl_retro_bns_payments (
    id bigint NOT NULL,
    program_unit_id integer NOT NULL,
    payment_type integer NOT NULL,
    payment_month date NOT NULL,
    status integer,
    payment_amount numeric(8,2) NOT NULL,
    payment_status integer,
    reason character varying,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: supl_retro_bns_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE supl_retro_bns_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: supl_retro_bns_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE supl_retro_bns_payments_id_seq OWNED BY supl_retro_bns_payments.id;


--
-- Name: supl_retro_payment_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE supl_retro_payment_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: supl_retro_payment_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE supl_retro_payment_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: supl_retro_payment_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE supl_retro_payment_versions_id_seq OWNED BY supl_retro_payment_versions.id;


--
-- Name: sys_parm_categories_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sys_parm_categories_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: sys_parm_categories_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sys_parm_categories_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sys_parm_categories_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sys_parm_categories_versions_id_seq OWNED BY sys_parm_categories_versions.id;


--
-- Name: system_param_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE system_param_categories (
    id bigint NOT NULL,
    description text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: system_param_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE system_param_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_param_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE system_param_categories_id_seq OWNED BY system_param_categories.id;


--
-- Name: system_params; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE system_params (
    id bigint NOT NULL,
    system_param_categories_id integer NOT NULL,
    key character varying,
    value character varying,
    description text,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: system_params_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE system_params_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_params_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE system_params_id_seq OWNED BY system_params.id;


--
-- Name: system_params_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE system_params_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: system_params_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE system_params_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_params_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE system_params_versions_id_seq OWNED BY system_params_versions.id;


--
-- Name: tepc_ssn_clientid_answer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tepc_ssn_clientid_answer (
    id bigint NOT NULL,
    clientid integer,
    ssn character varying(9),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    dob date
);


--
-- Name: tepc_ssn_clientid_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tepc_ssn_clientid_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tepc_ssn_clientid_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tepc_ssn_clientid_answer_id_seq OWNED BY tepc_ssn_clientid_answer.id;


--
-- Name: tepc_temp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tepc_temp (
    id bigint NOT NULL,
    ssn character varying(9),
    fed character varying(2),
    tea character varying(2),
    skip character varying(2),
    pay_month character varying(6),
    pat_type character varying(2),
    pay_date character varying(8),
    pay_amount character varying(4),
    case_no character varying(7),
    wp_reson character varying(2),
    state character varying(2),
    work_pay character varying(2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    middle_name character varying,
    name_suffix character varying
);


--
-- Name: tepc_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tepc_temp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tepc_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tepc_temp_id_seq OWNED BY tepc_temp.id;


--
-- Name: time_limits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE time_limits (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    federal_count integer,
    tea_state_count integer,
    work_pays_state_count integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: time_limits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE time_limits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: time_limits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE time_limits_id_seq OWNED BY time_limits.id;


--
-- Name: time_limits_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE time_limits_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: time_limits_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE time_limits_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: time_limits_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE time_limits_versions_id_seq OWNED BY time_limits_versions.id;


--
-- Name: user_local_offices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE user_local_offices (
    id bigint NOT NULL,
    user_id character varying NOT NULL,
    local_office_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: user_local_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_local_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_local_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_local_offices_id_seq OWNED BY user_local_offices.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying(50),
    phone_term character(4),
    created_by character varying,
    updated_by character varying,
    county integer,
    active_directory_id character varying(50),
    asis_emp_num character varying(10),
    division_code integer,
    email character varying(50),
    phone_number character varying(10),
    uid character varying,
    organisation_slug character varying,
    organisation_content_id character varying,
    permissions character varying[],
    remotely_signed_out boolean DEFAULT true,
    disabled boolean DEFAULT true
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: users_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_versions_id_seq OWNED BY users_versions.id;


--
-- Name: wadc_temps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE wadc_temps (
    id bigint NOT NULL,
    case_no character varying(7),
    payment_month character varying(4),
    payment_type character varying(2),
    pay_date character varying(6),
    check_amount character varying(4),
    warrant_no character varying(6),
    action_date character varying(8),
    action_ind character varying(1),
    sanction character varying(1),
    category integer,
    recoupment character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    county character varying(3),
    retro_amount character varying(5)
);


--
-- Name: wadc_temps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wadc_temps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wadc_temps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wadc_temps_id_seq OWNED BY wadc_temps.id;


--
-- Name: work_queue_local_office_subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_queue_local_office_subscriptions (
    id bigint NOT NULL,
    local_office_id integer NOT NULL,
    queue_type integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: work_queue_local_office_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_queue_local_office_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_queue_local_office_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_queue_local_office_subscriptions_id_seq OWNED BY work_queue_local_office_subscriptions.id;


--
-- Name: work_queue_state_transitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_queue_state_transitions (
    id bigint NOT NULL,
    work_queue_id bigint,
    namespace character varying,
    event character varying,
    "from" character varying,
    "to" character varying,
    created_at timestamp without time zone,
    created_by character varying,
    queue_reference_type integer,
    queue_reference_id integer
);


--
-- Name: work_queue_state_transitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_queue_state_transitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_queue_state_transitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_queue_state_transitions_id_seq OWNED BY work_queue_state_transitions.id;


--
-- Name: work_queue_user_subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_queue_user_subscriptions (
    id bigint NOT NULL,
    user_id character varying NOT NULL,
    local_office_id integer NOT NULL,
    queue_type integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: work_queue_user_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_queue_user_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_queue_user_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_queue_user_subscriptions_id_seq OWNED BY work_queue_user_subscriptions.id;


--
-- Name: work_queue_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_queue_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: work_queue_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_queue_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_queue_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_queue_versions_id_seq OWNED BY work_queue_versions.id;


--
-- Name: work_queues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_queues (
    id bigint NOT NULL,
    state integer NOT NULL,
    reference_type integer NOT NULL,
    reference_id integer NOT NULL,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: work_queues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_queues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_queues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_queues_id_seq OWNED BY work_queues.id;


--
-- Name: work_tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_tasks (
    id bigint NOT NULL,
    assigned_to_id character varying NOT NULL,
    household_id integer,
    task_category integer NOT NULL,
    task_type integer NOT NULL,
    client_id integer,
    beneficiary_type integer,
    reference_id integer,
    due_date date,
    complete_date date,
    action_text character varying,
    instructions text,
    urgency integer,
    notes character varying,
    status integer,
    created_by character varying NOT NULL,
    updated_by character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    assigned_by_user_id character varying,
    assigned_to_type integer,
    program_unit_id integer,
    auto_complete_by_system character(1)
);


--
-- Name: work_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_tasks_id_seq OWNED BY work_tasks.id;


--
-- Name: work_tasks_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE work_tasks_versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object json,
    object_changes json,
    created_at timestamp without time zone
);


--
-- Name: work_tasks_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_tasks_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_tasks_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_tasks_versions_id_seq OWNED BY work_tasks_versions.id;


--
-- Name: access_rights id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY access_rights ALTER COLUMN id SET DEFAULT nextval('access_rights_id_seq'::regclass);


--
-- Name: account_numbers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY account_numbers ALTER COLUMN id SET DEFAULT nextval('account_numbers_id_seq'::regclass);


--
-- Name: action_plan_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('action_plan_cpp_snapshots_id_seq'::regclass);


--
-- Name: action_plan_detail_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_detail_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('action_plan_detail_cpp_snapshots_id_seq'::regclass);


--
-- Name: action_plan_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_details ALTER COLUMN id SET DEFAULT nextval('action_plan_details_id_seq'::regclass);


--
-- Name: action_plan_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_details_versions ALTER COLUMN id SET DEFAULT nextval('action_plan_details_versions_id_seq'::regclass);


--
-- Name: action_plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plans ALTER COLUMN id SET DEFAULT nextval('action_plans_id_seq'::regclass);


--
-- Name: action_plans_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plans_versions ALTER COLUMN id SET DEFAULT nextval('action_plans_versions_id_seq'::regclass);


--
-- Name: activity_hour_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hour_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('activity_hour_cpp_snapshots_id_seq'::regclass);


--
-- Name: activity_hours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hours ALTER COLUMN id SET DEFAULT nextval('activity_hours_id_seq'::regclass);


--
-- Name: activity_hours_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hours_versions ALTER COLUMN id SET DEFAULT nextval('activity_hours_versions_id_seq'::regclass);


--
-- Name: address_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY address_versions ALTER COLUMN id SET DEFAULT nextval('address_versions_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY addresses ALTER COLUMN id SET DEFAULT nextval('addresses_id_seq'::regclass);


--
-- Name: agency_referrals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY agency_referrals ALTER COLUMN id SET DEFAULT nextval('agency_referrals_id_seq'::regclass);


--
-- Name: alerts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY alerts ALTER COLUMN id SET DEFAULT nextval('alerts_id_seq'::regclass);


--
-- Name: alerts_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY alerts_versions ALTER COLUMN id SET DEFAULT nextval('alerts_versions_id_seq'::regclass);


--
-- Name: alien_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY alien_versions ALTER COLUMN id SET DEFAULT nextval('alien_versions_id_seq'::regclass);


--
-- Name: aliens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY aliens ALTER COLUMN id SET DEFAULT nextval('aliens_id_seq'::regclass);


--
-- Name: app_elig_results_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_elig_results_versions ALTER COLUMN id SET DEFAULT nextval('app_elig_results_versions_id_seq'::regclass);


--
-- Name: app_service_pgm_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_service_pgm_versions ALTER COLUMN id SET DEFAULT nextval('app_service_pgm_versions_id_seq'::regclass);


--
-- Name: application_access_rights id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_access_rights ALTER COLUMN id SET DEFAULT nextval('application_access_rights_id_seq'::regclass);


--
-- Name: application_eligibility_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_eligibility_results ALTER COLUMN id SET DEFAULT nextval('application_eligibility_results_id_seq'::regclass);


--
-- Name: application_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members ALTER COLUMN id SET DEFAULT nextval('application_members_id_seq'::regclass);


--
-- Name: application_members_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members_versions ALTER COLUMN id SET DEFAULT nextval('application_members_versions_id_seq'::regclass);


--
-- Name: application_screenings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_screenings ALTER COLUMN id SET DEFAULT nextval('application_screenings_id_seq'::regclass);


--
-- Name: application_screenings_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_screenings_versions ALTER COLUMN id SET DEFAULT nextval('application_screenings_versions_id_seq'::regclass);


--
-- Name: application_service_programs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_service_programs ALTER COLUMN id SET DEFAULT nextval('application_service_programs_id_seq'::regclass);


--
-- Name: assessment_barrier_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_cpp_snapshots_id_seq'::regclass);


--
-- Name: assessment_barrier_detail_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_detail_histories ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_detail_histories_id_seq'::regclass);


--
-- Name: assessment_barrier_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_details ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_details_id_seq'::regclass);


--
-- Name: assessment_barrier_details_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_details_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_details_cpp_snapshots_id_seq'::regclass);


--
-- Name: assessment_barrier_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_histories ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_histories_id_seq'::regclass);


--
-- Name: assessment_barrier_recommendation_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendation_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_recommendation_cpp_snapshots_id_seq'::regclass);


--
-- Name: assessment_barrier_recommendation_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendation_histories ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_recommendation_histories_id_seq'::regclass);


--
-- Name: assessment_barrier_recommendations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendations ALTER COLUMN id SET DEFAULT nextval('assessment_barrier_recommendations_id_seq'::regclass);


--
-- Name: assessment_barriers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barriers ALTER COLUMN id SET DEFAULT nextval('assessment_barriers_id_seq'::regclass);


--
-- Name: assessment_careers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_careers ALTER COLUMN id SET DEFAULT nextval('assessment_careers_id_seq'::regclass);


--
-- Name: assessment_question_metadata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_question_metadata ALTER COLUMN id SET DEFAULT nextval('assessment_question_metadata_id_seq'::regclass);


--
-- Name: assessment_question_multi_responses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_question_multi_responses ALTER COLUMN id SET DEFAULT nextval('assessment_question_multi_responses_id_seq'::regclass);


--
-- Name: assessment_questions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_questions ALTER COLUMN id SET DEFAULT nextval('assessment_questions_id_seq'::regclass);


--
-- Name: assessment_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_sections ALTER COLUMN id SET DEFAULT nextval('assessment_sections_id_seq'::regclass);


--
-- Name: assessment_strength_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strength_histories ALTER COLUMN id SET DEFAULT nextval('assessment_strength_histories_id_seq'::regclass);


--
-- Name: assessment_strengths id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strengths ALTER COLUMN id SET DEFAULT nextval('assessment_strengths_id_seq'::regclass);


--
-- Name: assessment_strengths_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strengths_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('assessment_strengths_cpp_snapshots_id_seq'::regclass);


--
-- Name: assessment_sub_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_sub_sections ALTER COLUMN id SET DEFAULT nextval('assessment_sub_sections_id_seq'::regclass);


--
-- Name: assignments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assignments ALTER COLUMN id SET DEFAULT nextval('assignments_id_seq'::regclass);


--
-- Name: assignments_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY assignments_versions ALTER COLUMN id SET DEFAULT nextval('assignments_versions_id_seq'::regclass);


--
-- Name: attop_error_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY attop_error_logs ALTER COLUMN id SET DEFAULT nextval('attop_error_logs_id_seq'::regclass);


--
-- Name: audit_trail_expense_detail_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_expense_detail_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_expense_detail_secs_id_seq'::regclass);


--
-- Name: audit_trail_inc_adj_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_inc_adj_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_inc_adj_secs_id_seq'::regclass);


--
-- Name: audit_trail_inc_detail_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_inc_detail_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_inc_detail_secs_id_seq'::regclass);


--
-- Name: audit_trail_master_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_master_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_master_secs_id_seq'::regclass);


--
-- Name: audit_trail_res_detail_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_res_detail_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_res_detail_secs_id_seq'::regclass);


--
-- Name: audit_trail_res_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_res_details ALTER COLUMN id SET DEFAULT nextval('audit_trail_res_details_id_seq'::regclass);


--
-- Name: audit_trail_shared_secs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_shared_secs ALTER COLUMN id SET DEFAULT nextval('audit_trail_shared_secs_id_seq'::regclass);


--
-- Name: audit_trail_shareds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_shareds ALTER COLUMN id SET DEFAULT nextval('audit_trail_shareds_id_seq'::regclass);


--
-- Name: barriers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY barriers ALTER COLUMN id SET DEFAULT nextval('barriers_id_seq'::regclass);


--
-- Name: benefits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY benefits ALTER COLUMN id SET DEFAULT nextval('benefits_id_seq'::regclass);


--
-- Name: budget_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY budget_units ALTER COLUMN id SET DEFAULT nextval('budget_units_id_seq'::regclass);


--
-- Name: career_pathway_plan_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY career_pathway_plan_state_transitions ALTER COLUMN id SET DEFAULT nextval('career_pathway_plan_state_transitions_id_seq'::regclass);


--
-- Name: career_pathway_plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY career_pathway_plans ALTER COLUMN id SET DEFAULT nextval('career_pathway_plans_id_seq'::regclass);


--
-- Name: change_household_address_processes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY change_household_address_processes ALTER COLUMN id SET DEFAULT nextval('change_household_address_processes_id_seq'::regclass);


--
-- Name: client_addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_addresses ALTER COLUMN id SET DEFAULT nextval('client_addresses_id_seq'::regclass);


--
-- Name: client_applications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_applications ALTER COLUMN id SET DEFAULT nextval('client_applications_id_seq'::regclass);


--
-- Name: client_applications_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_applications_versions ALTER COLUMN id SET DEFAULT nextval('client_applications_versions_id_seq'::regclass);


--
-- Name: client_assessment_answer_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answer_histories ALTER COLUMN id SET DEFAULT nextval('client_assessment_answer_histories_id_seq'::regclass);


--
-- Name: client_assessment_answers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answers ALTER COLUMN id SET DEFAULT nextval('client_assessment_answers_id_seq'::regclass);


--
-- Name: client_assessment_answers_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answers_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('client_assessment_answers_cpp_snapshots_id_seq'::regclass);


--
-- Name: client_assessment_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('client_assessment_cpp_snapshots_id_seq'::regclass);


--
-- Name: client_assessment_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_histories ALTER COLUMN id SET DEFAULT nextval('client_assessment_histories_id_seq'::regclass);


--
-- Name: client_assessments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessments ALTER COLUMN id SET DEFAULT nextval('client_assessments_id_seq'::regclass);


--
-- Name: client_barriers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_barriers ALTER COLUMN id SET DEFAULT nextval('client_barriers_id_seq'::regclass);


--
-- Name: client_barriers_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_barriers_versions ALTER COLUMN id SET DEFAULT nextval('client_barriers_versions_id_seq'::regclass);


--
-- Name: client_characteristic_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_characteristic_versions ALTER COLUMN id SET DEFAULT nextval('client_characteristic_versions_id_seq'::regclass);


--
-- Name: client_characteristics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_characteristics ALTER COLUMN id SET DEFAULT nextval('client_characteristics_id_seq'::regclass);


--
-- Name: client_doc_verfications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_doc_verfications ALTER COLUMN id SET DEFAULT nextval('client_doc_verfications_id_seq'::regclass);


--
-- Name: client_doc_verfications_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_doc_verfications_versions ALTER COLUMN id SET DEFAULT nextval('client_doc_verfications_versions_id_seq'::regclass);


--
-- Name: client_emails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_emails ALTER COLUMN id SET DEFAULT nextval('client_emails_id_seq'::regclass);


--
-- Name: client_emails_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_emails_versions ALTER COLUMN id SET DEFAULT nextval('client_emails_versions_id_seq'::regclass);


--
-- Name: client_expenses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses ALTER COLUMN id SET DEFAULT nextval('client_expenses_id_seq'::regclass);


--
-- Name: client_expenses_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses_versions ALTER COLUMN id SET DEFAULT nextval('client_expenses_versions_id_seq'::regclass);


--
-- Name: client_immunization_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_immunization_versions ALTER COLUMN id SET DEFAULT nextval('client_immunization_versions_id_seq'::regclass);


--
-- Name: client_immunizations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_immunizations ALTER COLUMN id SET DEFAULT nextval('client_immunizations_id_seq'::regclass);


--
-- Name: client_incomes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes ALTER COLUMN id SET DEFAULT nextval('client_incomes_id_seq'::regclass);


--
-- Name: client_incomes_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes_versions ALTER COLUMN id SET DEFAULT nextval('client_incomes_versions_id_seq'::regclass);


--
-- Name: client_notes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_notes ALTER COLUMN id SET DEFAULT nextval('client_notes_id_seq'::regclass);


--
-- Name: client_parental_rspabilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_parental_rspabilities ALTER COLUMN id SET DEFAULT nextval('client_parental_rspabilities_id_seq'::regclass);


--
-- Name: client_race_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_race_versions ALTER COLUMN id SET DEFAULT nextval('client_race_versions_id_seq'::regclass);


--
-- Name: client_races id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_races ALTER COLUMN id SET DEFAULT nextval('client_races_id_seq'::regclass);


--
-- Name: client_relationship_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationship_versions ALTER COLUMN id SET DEFAULT nextval('client_relationship_versions_id_seq'::regclass);


--
-- Name: client_relationships id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationships ALTER COLUMN id SET DEFAULT nextval('client_relationships_id_seq'::regclass);


--
-- Name: client_resources id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources ALTER COLUMN id SET DEFAULT nextval('client_resources_id_seq'::regclass);


--
-- Name: client_resources_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources_versions ALTER COLUMN id SET DEFAULT nextval('client_resources_versions_id_seq'::regclass);


--
-- Name: client_scores id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_scores ALTER COLUMN id SET DEFAULT nextval('client_scores_id_seq'::regclass);


--
-- Name: client_scores_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_scores_versions ALTER COLUMN id SET DEFAULT nextval('client_scores_versions_id_seq'::regclass);


--
-- Name: client_skills id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_skills ALTER COLUMN id SET DEFAULT nextval('client_skills_id_seq'::regclass);


--
-- Name: client_skills_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_skills_versions ALTER COLUMN id SET DEFAULT nextval('client_skills_versions_id_seq'::regclass);


--
-- Name: client_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_versions ALTER COLUMN id SET DEFAULT nextval('client_versions_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY clients ALTER COLUMN id SET DEFAULT nextval('clients_id_seq'::regclass);


--
-- Name: clnt_assmnt_answers_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY clnt_assmnt_answers_versions ALTER COLUMN id SET DEFAULT nextval('clnt_assmnt_answers_versions_id_seq'::regclass);


--
-- Name: clnt_parent_rspability_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY clnt_parent_rspability_versions ALTER COLUMN id SET DEFAULT nextval('clnt_parent_rspability_versions_id_seq'::regclass);


--
-- Name: code_tables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY code_tables ALTER COLUMN id SET DEFAULT nextval('code_tables_id_seq'::regclass);


--
-- Name: code_tables_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY code_tables_versions ALTER COLUMN id SET DEFAULT nextval('code_tables_versions_id_seq'::regclass);


--
-- Name: codetable_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY codetable_items ALTER COLUMN id SET DEFAULT nextval('codetable_items_id_seq'::regclass);


--
-- Name: codetable_items_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY codetable_items_versions ALTER COLUMN id SET DEFAULT nextval('codetable_items_versions_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: cost_centers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cost_centers ALTER COLUMN id SET DEFAULT nextval('cost_centers_id_seq'::regclass);


--
-- Name: cost_centers_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cost_centers_versions ALTER COLUMN id SET DEFAULT nextval('cost_centers_versions_id_seq'::regclass);


--
-- Name: data_validations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_validations ALTER COLUMN id SET DEFAULT nextval('data_validations_id_seq'::regclass);


--
-- Name: data_validations_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_validations_versions ALTER COLUMN id SET DEFAULT nextval('data_validations_versions_id_seq'::regclass);


--
-- Name: disabilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY disabilities ALTER COLUMN id SET DEFAULT nextval('disabilities_id_seq'::regclass);


--
-- Name: disability_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY disability_versions ALTER COLUMN id SET DEFAULT nextval('disability_versions_id_seq'::regclass);


--
-- Name: educations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY educations ALTER COLUMN id SET DEFAULT nextval('educations_id_seq'::regclass);


--
-- Name: educations_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY educations_versions ALTER COLUMN id SET DEFAULT nextval('educations_versions_id_seq'::regclass);


--
-- Name: eligibility_determine_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY eligibility_determine_results ALTER COLUMN id SET DEFAULT nextval('eligibility_determine_results_id_seq'::regclass);


--
-- Name: employers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employers ALTER COLUMN id SET DEFAULT nextval('employers_id_seq'::regclass);


--
-- Name: employers_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employers_versions ALTER COLUMN id SET DEFAULT nextval('employers_versions_id_seq'::regclass);


--
-- Name: employment_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_details ALTER COLUMN id SET DEFAULT nextval('employment_details_id_seq'::regclass);


--
-- Name: employment_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_details_versions ALTER COLUMN id SET DEFAULT nextval('employment_details_versions_id_seq'::regclass);


--
-- Name: employment_readiness_plan_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_readiness_plan_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('employment_readiness_plan_cpp_snapshots_id_seq'::regclass);


--
-- Name: employment_readiness_plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_readiness_plans ALTER COLUMN id SET DEFAULT nextval('employment_readiness_plans_id_seq'::regclass);


--
-- Name: employments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employments ALTER COLUMN id SET DEFAULT nextval('employments_id_seq'::regclass);


--
-- Name: employments_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employments_versions ALTER COLUMN id SET DEFAULT nextval('employments_versions_id_seq'::regclass);


--
-- Name: entity_addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_addresses ALTER COLUMN id SET DEFAULT nextval('entity_addresses_id_seq'::regclass);


--
-- Name: entity_addresses_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_addresses_versions ALTER COLUMN id SET DEFAULT nextval('entity_addresses_versions_id_seq'::regclass);


--
-- Name: entity_phones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_phones ALTER COLUMN id SET DEFAULT nextval('entity_phones_id_seq'::regclass);


--
-- Name: entity_phones_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_phones_versions ALTER COLUMN id SET DEFAULT nextval('entity_phones_versions_id_seq'::regclass);


--
-- Name: entity_question_answers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_question_answers ALTER COLUMN id SET DEFAULT nextval('entity_question_answers_id_seq'::regclass);


--
-- Name: event_to_actions_mappings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY event_to_actions_mappings ALTER COLUMN id SET DEFAULT nextval('event_to_actions_mappings_id_seq'::regclass);


--
-- Name: expected_work_participation_hours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY expected_work_participation_hours ALTER COLUMN id SET DEFAULT nextval('expected_work_participation_hours_id_seq'::regclass);


--
-- Name: expense_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY expense_details ALTER COLUMN id SET DEFAULT nextval('expense_details_id_seq'::regclass);


--
-- Name: expense_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY expense_details_versions ALTER COLUMN id SET DEFAULT nextval('expense_details_versions_id_seq'::regclass);


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY expenses ALTER COLUMN id SET DEFAULT nextval('expenses_id_seq'::regclass);


--
-- Name: expenses_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY expenses_versions ALTER COLUMN id SET DEFAULT nextval('expenses_versions_id_seq'::regclass);


--
-- Name: household_member_step_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_member_step_statuses ALTER COLUMN id SET DEFAULT nextval('household_member_step_statuses_id_seq'::regclass);


--
-- Name: household_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_members ALTER COLUMN id SET DEFAULT nextval('household_members_id_seq'::regclass);


--
-- Name: households id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY households ALTER COLUMN id SET DEFAULT nextval('households_id_seq'::regclass);


--
-- Name: immunizations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY immunizations ALTER COLUMN id SET DEFAULT nextval('immunizations_id_seq'::regclass);


--
-- Name: import_data_from_files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY import_data_from_files ALTER COLUMN id SET DEFAULT nextval('import_data_from_files_id_seq'::regclass);


--
-- Name: in_state_payments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY in_state_payments ALTER COLUMN id SET DEFAULT nextval('in_state_payments_id_seq'::regclass);


--
-- Name: income_detail_adjust_reasons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_detail_adjust_reasons ALTER COLUMN id SET DEFAULT nextval('income_detail_adjust_reasons_id_seq'::regclass);


--
-- Name: income_detail_adjust_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_detail_adjust_versions ALTER COLUMN id SET DEFAULT nextval('income_detail_adjust_versions_id_seq'::regclass);


--
-- Name: income_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_details ALTER COLUMN id SET DEFAULT nextval('income_details_id_seq'::regclass);


--
-- Name: income_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_details_versions ALTER COLUMN id SET DEFAULT nextval('income_details_versions_id_seq'::regclass);


--
-- Name: incomes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY incomes ALTER COLUMN id SET DEFAULT nextval('incomes_id_seq'::regclass);


--
-- Name: incomes_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY incomes_versions ALTER COLUMN id SET DEFAULT nextval('incomes_versions_id_seq'::regclass);


--
-- Name: instate_payment_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY instate_payment_versions ALTER COLUMN id SET DEFAULT nextval('instate_payment_versions_id_seq'::regclass);


--
-- Name: line_item_history_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY line_item_history_versions ALTER COLUMN id SET DEFAULT nextval('line_item_history_versions_id_seq'::regclass);


--
-- Name: local_office_informations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY local_office_informations ALTER COLUMN id SET DEFAULT nextval('local_office_informations_id_seq'::regclass);


--
-- Name: nightly_batch_processes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY nightly_batch_processes ALTER COLUMN id SET DEFAULT nextval('nightly_batch_processes_id_seq'::regclass);


--
-- Name: notes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes ALTER COLUMN id SET DEFAULT nextval('notes_id_seq'::regclass);


--
-- Name: notes_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes_versions ALTER COLUMN id SET DEFAULT nextval('notes_versions_id_seq'::regclass);


--
-- Name: notice_generation_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_generation_details ALTER COLUMN id SET DEFAULT nextval('notice_generation_details_id_seq'::regclass);


--
-- Name: notice_generations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_generations ALTER COLUMN id SET DEFAULT nextval('notice_generations_id_seq'::regclass);


--
-- Name: notice_texts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_texts ALTER COLUMN id SET DEFAULT nextval('notice_texts_id_seq'::regclass);


--
-- Name: out_of_state_payments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY out_of_state_payments ALTER COLUMN id SET DEFAULT nextval('out_of_state_payments_id_seq'::regclass);


--
-- Name: outcomes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY outcomes ALTER COLUMN id SET DEFAULT nextval('outcomes_id_seq'::regclass);


--
-- Name: outcomes_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY outcomes_versions ALTER COLUMN id SET DEFAULT nextval('outcomes_versions_id_seq'::regclass);


--
-- Name: outofstate_payments_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY outofstate_payments_versions ALTER COLUMN id SET DEFAULT nextval('outofstate_payments_versions_id_seq'::regclass);


--
-- Name: payment_line_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_line_items ALTER COLUMN id SET DEFAULT nextval('payment_line_items_id_seq'::regclass);


--
-- Name: payment_line_items_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_line_items_versions ALTER COLUMN id SET DEFAULT nextval('payment_line_items_versions_id_seq'::regclass);


--
-- Name: pgu_actions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_actions ALTER COLUMN id SET DEFAULT nextval('pgu_actions_id_seq'::regclass);


--
-- Name: pgu_actions_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_actions_versions ALTER COLUMN id SET DEFAULT nextval('pgu_actions_versions_id_seq'::regclass);


--
-- Name: pgu_task_owners_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_task_owners_versions ALTER COLUMN id SET DEFAULT nextval('pgu_task_owners_versions_id_seq'::regclass);


--
-- Name: phones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones ALTER COLUMN id SET DEFAULT nextval('phones_id_seq'::regclass);


--
-- Name: phones_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones_versions ALTER COLUMN id SET DEFAULT nextval('phones_versions_id_seq'::regclass);


--
-- Name: potential_intake_clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY potential_intake_clients ALTER COLUMN id SET DEFAULT nextval('potential_intake_clients_id_seq'::regclass);


--
-- Name: pregnancies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pregnancies ALTER COLUMN id SET DEFAULT nextval('pregnancies_id_seq'::regclass);


--
-- Name: pregnancy_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY pregnancy_versions ALTER COLUMN id SET DEFAULT nextval('pregnancy_versions_id_seq'::regclass);


--
-- Name: prescreen_assessment_answers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_assessment_answers ALTER COLUMN id SET DEFAULT nextval('prescreen_assessment_answers_id_seq'::regclass);


--
-- Name: prescreen_household_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_members ALTER COLUMN id SET DEFAULT nextval('prescreen_household_members_id_seq'::regclass);


--
-- Name: prescreen_household_q_answers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_q_answers ALTER COLUMN id SET DEFAULT nextval('prescreen_household_q_answers_id_seq'::regclass);


--
-- Name: prescreen_household_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_results ALTER COLUMN id SET DEFAULT nextval('prescreen_household_results_id_seq'::regclass);


--
-- Name: prescreen_households id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_households ALTER COLUMN id SET DEFAULT nextval('prescreen_households_id_seq'::regclass);


--
-- Name: primary_contacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY primary_contacts ALTER COLUMN id SET DEFAULT nextval('primary_contacts_id_seq'::regclass);


--
-- Name: program_benefit_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_details ALTER COLUMN id SET DEFAULT nextval('program_benefit_details_id_seq'::regclass);


--
-- Name: program_benefit_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_members ALTER COLUMN id SET DEFAULT nextval('program_benefit_members_id_seq'::regclass);


--
-- Name: program_benft_detl_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benft_detl_versions ALTER COLUMN id SET DEFAULT nextval('program_benft_detl_versions_id_seq'::regclass);


--
-- Name: program_benft_membr_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benft_membr_versions ALTER COLUMN id SET DEFAULT nextval('program_benft_membr_versions_id_seq'::regclass);


--
-- Name: program_member_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_details ALTER COLUMN id SET DEFAULT nextval('program_member_details_id_seq'::regclass);


--
-- Name: program_member_summaries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_summaries ALTER COLUMN id SET DEFAULT nextval('program_member_summaries_id_seq'::regclass);


--
-- Name: program_membr_detil_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_membr_detil_versions ALTER COLUMN id SET DEFAULT nextval('program_membr_detil_versions_id_seq'::regclass);


--
-- Name: program_month_summaries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_month_summaries ALTER COLUMN id SET DEFAULT nextval('program_month_summaries_id_seq'::regclass);


--
-- Name: program_standard_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_standard_details ALTER COLUMN id SET DEFAULT nextval('program_standard_details_id_seq'::regclass);


--
-- Name: program_standards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_standards ALTER COLUMN id SET DEFAULT nextval('program_standards_id_seq'::regclass);


--
-- Name: program_unit_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_members ALTER COLUMN id SET DEFAULT nextval('program_unit_members_id_seq'::regclass);


--
-- Name: program_unit_membr_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_membr_versions ALTER COLUMN id SET DEFAULT nextval('program_unit_membr_versions_id_seq'::regclass);


--
-- Name: program_unit_partcpatn_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_partcpatn_versions ALTER COLUMN id SET DEFAULT nextval('program_unit_partcpatn_versions_id_seq'::regclass);


--
-- Name: program_unit_participations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_participations ALTER COLUMN id SET DEFAULT nextval('program_unit_participations_id_seq'::regclass);


--
-- Name: program_unit_representatives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_representatives ALTER COLUMN id SET DEFAULT nextval('program_unit_representatives_id_seq'::regclass);


--
-- Name: program_unit_reprztatv_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_reprztatv_versions ALTER COLUMN id SET DEFAULT nextval('program_unit_reprztatv_versions_id_seq'::regclass);


--
-- Name: program_unit_size_standard_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_size_standard_details ALTER COLUMN id SET DEFAULT nextval('program_unit_size_standard_details_id_seq'::regclass);


--
-- Name: program_unit_size_standards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_size_standards ALTER COLUMN id SET DEFAULT nextval('program_unit_size_standards_id_seq'::regclass);


--
-- Name: program_unit_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_state_transitions ALTER COLUMN id SET DEFAULT nextval('program_unit_state_transitions_id_seq'::regclass);


--
-- Name: program_unit_task_owners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_task_owners ALTER COLUMN id SET DEFAULT nextval('program_unit_task_owners_id_seq'::regclass);


--
-- Name: program_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_units ALTER COLUMN id SET DEFAULT nextval('program_units_id_seq'::regclass);


--
-- Name: program_units_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_units_versions ALTER COLUMN id SET DEFAULT nextval('program_units_versions_id_seq'::regclass);


--
-- Name: program_wizard_reasons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizard_reasons ALTER COLUMN id SET DEFAULT nextval('program_wizard_reasons_id_seq'::regclass);


--
-- Name: program_wizards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards ALTER COLUMN id SET DEFAULT nextval('program_wizards_id_seq'::regclass);


--
-- Name: program_wizards_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards_versions ALTER COLUMN id SET DEFAULT nextval('program_wizards_versions_id_seq'::regclass);


--
-- Name: provider_agreement_area_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_area_versions ALTER COLUMN id SET DEFAULT nextval('provider_agreement_area_versions_id_seq'::regclass);


--
-- Name: provider_agreement_areas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_areas ALTER COLUMN id SET DEFAULT nextval('provider_agreement_areas_id_seq'::regclass);


--
-- Name: provider_agreement_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_state_transitions ALTER COLUMN id SET DEFAULT nextval('provider_agreement_state_transitions_id_seq'::regclass);


--
-- Name: provider_agreements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreements ALTER COLUMN id SET DEFAULT nextval('provider_agreements_id_seq'::regclass);


--
-- Name: provider_agreements_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreements_versions ALTER COLUMN id SET DEFAULT nextval('provider_agreements_versions_id_seq'::regclass);


--
-- Name: provider_app_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_app_users ALTER COLUMN id SET DEFAULT nextval('provider_app_users_id_seq'::regclass);


--
-- Name: provider_area_avail_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_area_avail_versions ALTER COLUMN id SET DEFAULT nextval('provider_area_avail_versions_id_seq'::regclass);


--
-- Name: provider_invoice_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoice_histories ALTER COLUMN id SET DEFAULT nextval('provider_invoice_histories_id_seq'::regclass);


--
-- Name: provider_invoice_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoice_state_transitions ALTER COLUMN id SET DEFAULT nextval('provider_invoice_state_transitions_id_seq'::regclass);


--
-- Name: provider_invoices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoices ALTER COLUMN id SET DEFAULT nextval('provider_invoices_id_seq'::regclass);


--
-- Name: provider_invoices_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoices_versions ALTER COLUMN id SET DEFAULT nextval('provider_invoices_versions_id_seq'::regclass);


--
-- Name: provider_languages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_languages ALTER COLUMN id SET DEFAULT nextval('provider_languages_id_seq'::regclass);


--
-- Name: provider_languages_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_languages_versions ALTER COLUMN id SET DEFAULT nextval('provider_languages_versions_id_seq'::regclass);


--
-- Name: provider_service_area_availabilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_area_availabilities ALTER COLUMN id SET DEFAULT nextval('provider_service_area_availabilities_id_seq'::regclass);


--
-- Name: provider_service_area_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_area_versions ALTER COLUMN id SET DEFAULT nextval('provider_service_area_versions_id_seq'::regclass);


--
-- Name: provider_service_areas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_areas ALTER COLUMN id SET DEFAULT nextval('provider_service_areas_id_seq'::regclass);


--
-- Name: provider_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_services ALTER COLUMN id SET DEFAULT nextval('provider_services_id_seq'::regclass);


--
-- Name: provider_services_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_services_versions ALTER COLUMN id SET DEFAULT nextval('provider_services_versions_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY providers ALTER COLUMN id SET DEFAULT nextval('providers_id_seq'::regclass);


--
-- Name: providers_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY providers_versions ALTER COLUMN id SET DEFAULT nextval('providers_versions_id_seq'::regclass);


--
-- Name: recommendations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY recommendations ALTER COLUMN id SET DEFAULT nextval('recommendations_id_seq'::regclass);


--
-- Name: resource_adjustments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_adjustments ALTER COLUMN id SET DEFAULT nextval('resource_adjustments_id_seq'::regclass);


--
-- Name: resource_adjustments_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_adjustments_versions ALTER COLUMN id SET DEFAULT nextval('resource_adjustments_versions_id_seq'::regclass);


--
-- Name: resource_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_details ALTER COLUMN id SET DEFAULT nextval('resource_details_id_seq'::regclass);


--
-- Name: resource_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_details_versions ALTER COLUMN id SET DEFAULT nextval('resource_details_versions_id_seq'::regclass);


--
-- Name: resource_uses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_uses ALTER COLUMN id SET DEFAULT nextval('resource_uses_id_seq'::regclass);


--
-- Name: resource_uses_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_uses_versions ALTER COLUMN id SET DEFAULT nextval('resource_uses_versions_id_seq'::regclass);


--
-- Name: resources id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resources ALTER COLUMN id SET DEFAULT nextval('resources_id_seq'::regclass);


--
-- Name: resources_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY resources_versions ALTER COLUMN id SET DEFAULT nextval('resources_versions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: ruby_element_reltns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ruby_element_reltns ALTER COLUMN id SET DEFAULT nextval('ruby_element_reltns_id_seq'::regclass);


--
-- Name: ruby_elements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ruby_elements ALTER COLUMN id SET DEFAULT nextval('ruby_elements_id_seq'::regclass);


--
-- Name: rule_adjustments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_adjustments ALTER COLUMN id SET DEFAULT nextval('rule_adjustments_id_seq'::regclass);


--
-- Name: rule_date_param_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_date_param_details ALTER COLUMN id SET DEFAULT nextval('rule_date_param_details_id_seq'::regclass);


--
-- Name: rule_date_params id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_date_params ALTER COLUMN id SET DEFAULT nextval('rule_date_params_id_seq'::regclass);


--
-- Name: rule_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_details ALTER COLUMN id SET DEFAULT nextval('rule_details_id_seq'::regclass);


--
-- Name: rule_disallows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_disallows ALTER COLUMN id SET DEFAULT nextval('rule_disallows_id_seq'::regclass);


--
-- Name: rule_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_results ALTER COLUMN id SET DEFAULT nextval('rule_results_id_seq'::regclass);


--
-- Name: rules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rules ALTER COLUMN id SET DEFAULT nextval('rules_id_seq'::regclass);


--
-- Name: sanction_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanction_details ALTER COLUMN id SET DEFAULT nextval('sanction_details_id_seq'::regclass);


--
-- Name: sanction_details_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanction_details_versions ALTER COLUMN id SET DEFAULT nextval('sanction_details_versions_id_seq'::regclass);


--
-- Name: sanctions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions ALTER COLUMN id SET DEFAULT nextval('sanctions_id_seq'::regclass);


--
-- Name: sanctions_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions_versions ALTER COLUMN id SET DEFAULT nextval('sanctions_versions_id_seq'::regclass);


--
-- Name: schedule_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('schedule_cpp_snapshots_id_seq'::regclass);


--
-- Name: schedule_extensions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_extensions ALTER COLUMN id SET DEFAULT nextval('schedule_extensions_id_seq'::regclass);


--
-- Name: schedule_extensions_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_extensions_versions ALTER COLUMN id SET DEFAULT nextval('schedule_extensions_versions_id_seq'::regclass);


--
-- Name: schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedules ALTER COLUMN id SET DEFAULT nextval('schedules_id_seq'::regclass);


--
-- Name: schedules_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedules_versions ALTER COLUMN id SET DEFAULT nextval('schedules_versions_id_seq'::regclass);


--
-- Name: schools id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schools ALTER COLUMN id SET DEFAULT nextval('schools_id_seq'::regclass);


--
-- Name: schools_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY schools_versions ALTER COLUMN id SET DEFAULT nextval('schools_versions_id_seq'::regclass);


--
-- Name: screening_engines id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY screening_engines ALTER COLUMN id SET DEFAULT nextval('screening_engines_id_seq'::regclass);


--
-- Name: screening_ineligible_codes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY screening_ineligible_codes ALTER COLUMN id SET DEFAULT nextval('screening_ineligible_codes_id_seq'::regclass);


--
-- Name: seriz_auth_line_items_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY seriz_auth_line_items_versions ALTER COLUMN id SET DEFAULT nextval('seriz_auth_line_items_versions_id_seq'::regclass);


--
-- Name: service_authorization_cpp_snapshots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_cpp_snapshots ALTER COLUMN id SET DEFAULT nextval('service_authorization_cpp_snapshots_id_seq'::regclass);


--
-- Name: service_authorization_line_item_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_item_histories ALTER COLUMN id SET DEFAULT nextval('service_authorization_line_item_histories_id_seq'::regclass);


--
-- Name: service_authorization_line_item_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_item_state_transitions ALTER COLUMN id SET DEFAULT nextval('service_authorization_line_item_state_transitions_id_seq'::regclass);


--
-- Name: service_authorization_line_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_items ALTER COLUMN id SET DEFAULT nextval('service_authorization_line_items_id_seq'::regclass);


--
-- Name: service_authorization_line_items_invoices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_items_invoices ALTER COLUMN id SET DEFAULT nextval('service_authorization_line_items_invoices_id_seq'::regclass);


--
-- Name: service_authorizations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorizations ALTER COLUMN id SET DEFAULT nextval('service_authorizations_id_seq'::regclass);


--
-- Name: service_authorizations_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorizations_versions ALTER COLUMN id SET DEFAULT nextval('service_authorizations_versions_id_seq'::regclass);


--
-- Name: service_programs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_programs ALTER COLUMN id SET DEFAULT nextval('service_programs_id_seq'::regclass);


--
-- Name: service_programs_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_programs_versions ALTER COLUMN id SET DEFAULT nextval('service_programs_versions_id_seq'::regclass);


--
-- Name: service_schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_schedules ALTER COLUMN id SET DEFAULT nextval('service_schedules_id_seq'::regclass);


--
-- Name: service_schedules_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_schedules_versions ALTER COLUMN id SET DEFAULT nextval('service_schedules_versions_id_seq'::regclass);


--
-- Name: standard_recommendations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY standard_recommendations ALTER COLUMN id SET DEFAULT nextval('standard_recommendations_id_seq'::regclass);


--
-- Name: supl_retro_bns_payments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY supl_retro_bns_payments ALTER COLUMN id SET DEFAULT nextval('supl_retro_bns_payments_id_seq'::regclass);


--
-- Name: supl_retro_payment_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY supl_retro_payment_versions ALTER COLUMN id SET DEFAULT nextval('supl_retro_payment_versions_id_seq'::regclass);


--
-- Name: sys_parm_categories_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sys_parm_categories_versions ALTER COLUMN id SET DEFAULT nextval('sys_parm_categories_versions_id_seq'::regclass);


--
-- Name: system_param_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_param_categories ALTER COLUMN id SET DEFAULT nextval('system_param_categories_id_seq'::regclass);


--
-- Name: system_params id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_params ALTER COLUMN id SET DEFAULT nextval('system_params_id_seq'::regclass);


--
-- Name: system_params_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_params_versions ALTER COLUMN id SET DEFAULT nextval('system_params_versions_id_seq'::regclass);


--
-- Name: tepc_ssn_clientid_answer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tepc_ssn_clientid_answer ALTER COLUMN id SET DEFAULT nextval('tepc_ssn_clientid_answer_id_seq'::regclass);


--
-- Name: tepc_temp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tepc_temp ALTER COLUMN id SET DEFAULT nextval('tepc_temp_id_seq'::regclass);


--
-- Name: time_limits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY time_limits ALTER COLUMN id SET DEFAULT nextval('time_limits_id_seq'::regclass);


--
-- Name: time_limits_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY time_limits_versions ALTER COLUMN id SET DEFAULT nextval('time_limits_versions_id_seq'::regclass);


--
-- Name: user_local_offices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_local_offices ALTER COLUMN id SET DEFAULT nextval('user_local_offices_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: users_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users_versions ALTER COLUMN id SET DEFAULT nextval('users_versions_id_seq'::regclass);


--
-- Name: wadc_temps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wadc_temps ALTER COLUMN id SET DEFAULT nextval('wadc_temps_id_seq'::regclass);


--
-- Name: work_queue_local_office_subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_local_office_subscriptions ALTER COLUMN id SET DEFAULT nextval('work_queue_local_office_subscriptions_id_seq'::regclass);


--
-- Name: work_queue_state_transitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_state_transitions ALTER COLUMN id SET DEFAULT nextval('work_queue_state_transitions_id_seq'::regclass);


--
-- Name: work_queue_user_subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_user_subscriptions ALTER COLUMN id SET DEFAULT nextval('work_queue_user_subscriptions_id_seq'::regclass);


--
-- Name: work_queue_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_versions ALTER COLUMN id SET DEFAULT nextval('work_queue_versions_id_seq'::regclass);


--
-- Name: work_queues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queues ALTER COLUMN id SET DEFAULT nextval('work_queues_id_seq'::regclass);


--
-- Name: work_tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_tasks ALTER COLUMN id SET DEFAULT nextval('work_tasks_id_seq'::regclass);


--
-- Name: work_tasks_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_tasks_versions ALTER COLUMN id SET DEFAULT nextval('work_tasks_versions_id_seq'::regclass);


--
-- Name: access_rights access_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY access_rights
    ADD CONSTRAINT access_rights_pkey PRIMARY KEY (id);


--
-- Name: account_numbers account_number_representative_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY account_numbers
    ADD CONSTRAINT account_number_representative_id_unique UNIQUE (account_number, representative_id);


--
-- Name: account_numbers account_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY account_numbers
    ADD CONSTRAINT account_numbers_pkey PRIMARY KEY (id);


--
-- Name: action_plan_cpp_snapshots action_plan_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_cpp_snapshots
    ADD CONSTRAINT action_plan_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: action_plan_detail_cpp_snapshots action_plan_detail_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_detail_cpp_snapshots
    ADD CONSTRAINT action_plan_detail_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: action_plan_details action_plan_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_details
    ADD CONSTRAINT action_plan_details_pkey PRIMARY KEY (id);


--
-- Name: action_plan_details_versions action_plan_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plan_details_versions
    ADD CONSTRAINT action_plan_details_versions_pkey PRIMARY KEY (id);


--
-- Name: action_plans action_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plans
    ADD CONSTRAINT action_plans_pkey PRIMARY KEY (id);


--
-- Name: action_plans_versions action_plans_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY action_plans_versions
    ADD CONSTRAINT action_plans_versions_pkey PRIMARY KEY (id);


--
-- Name: activity_hour_cpp_snapshots activity_hour_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hour_cpp_snapshots
    ADD CONSTRAINT activity_hour_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: activity_hours activity_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hours
    ADD CONSTRAINT activity_hours_pkey PRIMARY KEY (id);


--
-- Name: activity_hours_versions activity_hours_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY activity_hours_versions
    ADD CONSTRAINT activity_hours_versions_pkey PRIMARY KEY (id);


--
-- Name: address_versions address_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY address_versions
    ADD CONSTRAINT address_versions_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: agency_referrals agency_referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agency_referrals
    ADD CONSTRAINT agency_referrals_pkey PRIMARY KEY (id);


--
-- Name: alerts alerts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY alerts
    ADD CONSTRAINT alerts_pkey PRIMARY KEY (id);


--
-- Name: alerts_versions alerts_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY alerts_versions
    ADD CONSTRAINT alerts_versions_pkey PRIMARY KEY (id);


--
-- Name: aliens alien_client_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY aliens
    ADD CONSTRAINT alien_client_id_unique UNIQUE (client_id);


--
-- Name: alien_versions alien_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY alien_versions
    ADD CONSTRAINT alien_versions_pkey PRIMARY KEY (id);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (id);


--
-- Name: app_elig_results_versions app_elig_results_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_elig_results_versions
    ADD CONSTRAINT app_elig_results_versions_pkey PRIMARY KEY (id);


--
-- Name: application_members app_member_app_id_and_client_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members
    ADD CONSTRAINT app_member_app_id_and_client_id_unique UNIQUE (client_application_id, client_id);


--
-- Name: app_service_pgm_versions app_service_pgm_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_service_pgm_versions
    ADD CONSTRAINT app_service_pgm_versions_pkey PRIMARY KEY (id);


--
-- Name: application_access_rights application_access_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_access_rights
    ADD CONSTRAINT application_access_rights_pkey PRIMARY KEY (id);


--
-- Name: application_eligibility_results application_eligibility_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_eligibility_results
    ADD CONSTRAINT application_eligibility_results_pkey PRIMARY KEY (id);


--
-- Name: application_members application_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members
    ADD CONSTRAINT application_members_pkey PRIMARY KEY (id);


--
-- Name: application_members_versions application_members_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members_versions
    ADD CONSTRAINT application_members_versions_pkey PRIMARY KEY (id);


--
-- Name: application_screenings application_screenings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_screenings
    ADD CONSTRAINT application_screenings_pkey PRIMARY KEY (id);


--
-- Name: application_screenings_versions application_screenings_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_screenings_versions
    ADD CONSTRAINT application_screenings_versions_pkey PRIMARY KEY (id);


--
-- Name: application_service_programs application_service_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_service_programs
    ADD CONSTRAINT application_service_programs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: assessment_barrier_cpp_snapshots assessment_barrier_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_cpp_snapshots
    ADD CONSTRAINT assessment_barrier_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_detail_histories assessment_barrier_detail_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_detail_histories
    ADD CONSTRAINT assessment_barrier_detail_histories_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_details_cpp_snapshots assessment_barrier_details_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_details_cpp_snapshots
    ADD CONSTRAINT assessment_barrier_details_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_details assessment_barrier_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_details
    ADD CONSTRAINT assessment_barrier_details_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_histories assessment_barrier_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_histories
    ADD CONSTRAINT assessment_barrier_histories_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_recommendation_cpp_snapshots assessment_barrier_recommendation_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendation_cpp_snapshots
    ADD CONSTRAINT assessment_barrier_recommendation_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_recommendation_histories assessment_barrier_recommendation_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendation_histories
    ADD CONSTRAINT assessment_barrier_recommendation_histories_pkey PRIMARY KEY (id);


--
-- Name: assessment_barrier_recommendations assessment_barrier_recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barrier_recommendations
    ADD CONSTRAINT assessment_barrier_recommendations_pkey PRIMARY KEY (id);


--
-- Name: assessment_barriers assessment_barriers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_barriers
    ADD CONSTRAINT assessment_barriers_pkey PRIMARY KEY (id);


--
-- Name: assessment_careers assessment_careers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_careers
    ADD CONSTRAINT assessment_careers_pkey PRIMARY KEY (id);


--
-- Name: assessment_question_metadata assessment_question_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_question_metadata
    ADD CONSTRAINT assessment_question_metadata_pkey PRIMARY KEY (id);


--
-- Name: assessment_question_multi_responses assessment_question_multi_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_question_multi_responses
    ADD CONSTRAINT assessment_question_multi_responses_pkey PRIMARY KEY (id);


--
-- Name: assessment_questions assessment_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_questions
    ADD CONSTRAINT assessment_questions_pkey PRIMARY KEY (id);


--
-- Name: assessment_sections assessment_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_sections
    ADD CONSTRAINT assessment_sections_pkey PRIMARY KEY (id);


--
-- Name: assessment_strength_histories assessment_strength_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strength_histories
    ADD CONSTRAINT assessment_strength_histories_pkey PRIMARY KEY (id);


--
-- Name: assessment_strengths_cpp_snapshots assessment_strengths_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strengths_cpp_snapshots
    ADD CONSTRAINT assessment_strengths_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: assessment_strengths assessment_strengths_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_strengths
    ADD CONSTRAINT assessment_strengths_pkey PRIMARY KEY (id);


--
-- Name: assessment_sub_sections assessment_sub_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assessment_sub_sections
    ADD CONSTRAINT assessment_sub_sections_pkey PRIMARY KEY (id);


--
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);


--
-- Name: assignments_versions assignments_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY assignments_versions
    ADD CONSTRAINT assignments_versions_pkey PRIMARY KEY (id);


--
-- Name: attop_error_logs attop_error_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY attop_error_logs
    ADD CONSTRAINT attop_error_logs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_expense_detail_secs audit_trail_expense_detail_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_expense_detail_secs
    ADD CONSTRAINT audit_trail_expense_detail_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_expense_details audit_trail_expense_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_expense_details
    ADD CONSTRAINT audit_trail_expense_details_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_inc_adj_secs audit_trail_inc_adj_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_inc_adj_secs
    ADD CONSTRAINT audit_trail_inc_adj_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_inc_adjs audit_trail_inc_adjs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_inc_adjs
    ADD CONSTRAINT audit_trail_inc_adjs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_inc_detail_secs audit_trail_inc_detail_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_inc_detail_secs
    ADD CONSTRAINT audit_trail_inc_detail_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_income_details audit_trail_income_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_income_details
    ADD CONSTRAINT audit_trail_income_details_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_master_secs audit_trail_master_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_master_secs
    ADD CONSTRAINT audit_trail_master_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_masters audit_trail_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_masters
    ADD CONSTRAINT audit_trail_masters_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_res_detail_secs audit_trail_res_detail_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_res_detail_secs
    ADD CONSTRAINT audit_trail_res_detail_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_res_details audit_trail_res_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_res_details
    ADD CONSTRAINT audit_trail_res_details_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_shared_secs audit_trail_shared_secs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_shared_secs
    ADD CONSTRAINT audit_trail_shared_secs_pkey PRIMARY KEY (id);


--
-- Name: audit_trail_shareds audit_trail_shareds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audit_trail_shareds
    ADD CONSTRAINT audit_trail_shareds_pkey PRIMARY KEY (id);


--
-- Name: barriers barriers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY barriers
    ADD CONSTRAINT barriers_pkey PRIMARY KEY (id);


--
-- Name: benefits benefits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY benefits
    ADD CONSTRAINT benefits_pkey PRIMARY KEY (id);


--
-- Name: budget_units budget_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY budget_units
    ADD CONSTRAINT budget_units_pkey PRIMARY KEY (id);


--
-- Name: career_pathway_plan_state_transitions career_pathway_plan_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY career_pathway_plan_state_transitions
    ADD CONSTRAINT career_pathway_plan_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: career_pathway_plans career_pathway_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY career_pathway_plans
    ADD CONSTRAINT career_pathway_plans_pkey PRIMARY KEY (id);


--
-- Name: change_household_address_processes change_household_address_processes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY change_household_address_processes
    ADD CONSTRAINT change_household_address_processes_pkey PRIMARY KEY (id);


--
-- Name: client_relationships cl_relationships_from_cl_and_relationship_type_and_to_cl_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationships
    ADD CONSTRAINT cl_relationships_from_cl_and_relationship_type_and_to_cl_unique UNIQUE (from_client_id, relationship_type, to_client_id);


--
-- Name: client_resources cl_resources_client_id_and_resource_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources
    ADD CONSTRAINT cl_resources_client_id_and_resource_id_unique UNIQUE (client_id, resource_id);


--
-- Name: client_addresses client_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_addresses
    ADD CONSTRAINT client_addresses_pkey PRIMARY KEY (id);


--
-- Name: client_applications client_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_applications
    ADD CONSTRAINT client_applications_pkey PRIMARY KEY (id);


--
-- Name: client_applications_versions client_applications_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_applications_versions
    ADD CONSTRAINT client_applications_versions_pkey PRIMARY KEY (id);


--
-- Name: client_assessment_answer_histories client_assessment_answer_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answer_histories
    ADD CONSTRAINT client_assessment_answer_histories_pkey PRIMARY KEY (id);


--
-- Name: client_assessment_answers_cpp_snapshots client_assessment_answers_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answers_cpp_snapshots
    ADD CONSTRAINT client_assessment_answers_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: client_assessment_answers client_assessment_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_answers
    ADD CONSTRAINT client_assessment_answers_pkey PRIMARY KEY (id);


--
-- Name: client_assessment_cpp_snapshots client_assessment_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_cpp_snapshots
    ADD CONSTRAINT client_assessment_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: client_assessment_histories client_assessment_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessment_histories
    ADD CONSTRAINT client_assessment_histories_pkey PRIMARY KEY (id);


--
-- Name: client_assessments client_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_assessments
    ADD CONSTRAINT client_assessments_pkey PRIMARY KEY (id);


--
-- Name: client_barriers client_barriers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_barriers
    ADD CONSTRAINT client_barriers_pkey PRIMARY KEY (id);


--
-- Name: client_barriers_versions client_barriers_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_barriers_versions
    ADD CONSTRAINT client_barriers_versions_pkey PRIMARY KEY (id);


--
-- Name: client_characteristic_versions client_characteristic_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_characteristic_versions
    ADD CONSTRAINT client_characteristic_versions_pkey PRIMARY KEY (id);


--
-- Name: client_characteristics client_characteristics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_characteristics
    ADD CONSTRAINT client_characteristics_pkey PRIMARY KEY (id);


--
-- Name: client_doc_verfications client_doc_verfications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_doc_verfications
    ADD CONSTRAINT client_doc_verfications_pkey PRIMARY KEY (id);


--
-- Name: client_doc_verfications_versions client_doc_verfications_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_doc_verfications_versions
    ADD CONSTRAINT client_doc_verfications_versions_pkey PRIMARY KEY (id);


--
-- Name: client_emails client_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_emails
    ADD CONSTRAINT client_emails_pkey PRIMARY KEY (id);


--
-- Name: client_emails_versions client_emails_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_emails_versions
    ADD CONSTRAINT client_emails_versions_pkey PRIMARY KEY (id);


--
-- Name: client_expenses client_expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses
    ADD CONSTRAINT client_expenses_pkey PRIMARY KEY (id);


--
-- Name: client_expenses_versions client_expenses_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses_versions
    ADD CONSTRAINT client_expenses_versions_pkey PRIMARY KEY (id);


--
-- Name: client_immunization_versions client_immunization_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_immunization_versions
    ADD CONSTRAINT client_immunization_versions_pkey PRIMARY KEY (id);


--
-- Name: client_immunizations client_immunizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_immunizations
    ADD CONSTRAINT client_immunizations_pkey PRIMARY KEY (id);


--
-- Name: client_incomes client_incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes
    ADD CONSTRAINT client_incomes_pkey PRIMARY KEY (id);


--
-- Name: client_incomes_versions client_incomes_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes_versions
    ADD CONSTRAINT client_incomes_versions_pkey PRIMARY KEY (id);


--
-- Name: client_notes client_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_notes
    ADD CONSTRAINT client_notes_pkey PRIMARY KEY (id);


--
-- Name: client_parental_rspabilities client_parental_rspabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_parental_rspabilities
    ADD CONSTRAINT client_parental_rspabilities_pkey PRIMARY KEY (id);


--
-- Name: client_race_versions client_race_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_race_versions
    ADD CONSTRAINT client_race_versions_pkey PRIMARY KEY (id);


--
-- Name: client_races client_races_client_id_and_race_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_races
    ADD CONSTRAINT client_races_client_id_and_race_id_unique UNIQUE (client_id, race_id);


--
-- Name: client_races client_races_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_races
    ADD CONSTRAINT client_races_pkey PRIMARY KEY (id);


--
-- Name: client_relationship_versions client_relationship_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationship_versions
    ADD CONSTRAINT client_relationship_versions_pkey PRIMARY KEY (id);


--
-- Name: client_relationships client_relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationships
    ADD CONSTRAINT client_relationships_pkey PRIMARY KEY (id);


--
-- Name: client_resources client_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources
    ADD CONSTRAINT client_resources_pkey PRIMARY KEY (id);


--
-- Name: client_resources_versions client_resources_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources_versions
    ADD CONSTRAINT client_resources_versions_pkey PRIMARY KEY (id);


--
-- Name: client_scores client_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_scores
    ADD CONSTRAINT client_scores_pkey PRIMARY KEY (id);


--
-- Name: client_scores_versions client_scores_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_scores_versions
    ADD CONSTRAINT client_scores_versions_pkey PRIMARY KEY (id);


--
-- Name: client_skills client_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_skills
    ADD CONSTRAINT client_skills_pkey PRIMARY KEY (id);


--
-- Name: client_skills_versions client_skills_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_skills_versions
    ADD CONSTRAINT client_skills_versions_pkey PRIMARY KEY (id);


--
-- Name: client_versions client_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_versions
    ADD CONSTRAINT client_versions_pkey PRIMARY KEY (id);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: clients clients_ssn_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY clients
    ADD CONSTRAINT clients_ssn_unique UNIQUE (ssn);


--
-- Name: clnt_assmnt_answers_versions clnt_assmnt_answers_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY clnt_assmnt_answers_versions
    ADD CONSTRAINT clnt_assmnt_answers_versions_pkey PRIMARY KEY (id);


--
-- Name: clnt_parent_rspability_versions clnt_parent_rspability_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY clnt_parent_rspability_versions
    ADD CONSTRAINT clnt_parent_rspability_versions_pkey PRIMARY KEY (id);


--
-- Name: code_tables code_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY code_tables
    ADD CONSTRAINT code_tables_pkey PRIMARY KEY (id);


--
-- Name: code_tables_versions code_tables_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY code_tables_versions
    ADD CONSTRAINT code_tables_versions_pkey PRIMARY KEY (id);


--
-- Name: codetable_items codetable_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY codetable_items
    ADD CONSTRAINT codetable_items_pkey PRIMARY KEY (id);


--
-- Name: codetable_items_versions codetable_items_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY codetable_items_versions
    ADD CONSTRAINT codetable_items_versions_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: cost_centers cost_centers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cost_centers
    ADD CONSTRAINT cost_centers_pkey PRIMARY KEY (id);


--
-- Name: cost_centers_versions cost_centers_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cost_centers_versions
    ADD CONSTRAINT cost_centers_versions_pkey PRIMARY KEY (id);


--
-- Name: data_validations data_validations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_validations
    ADD CONSTRAINT data_validations_pkey PRIMARY KEY (id);


--
-- Name: data_validations_versions data_validations_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_validations_versions
    ADD CONSTRAINT data_validations_versions_pkey PRIMARY KEY (id);


--
-- Name: disabilities disabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disabilities
    ADD CONSTRAINT disabilities_pkey PRIMARY KEY (id);


--
-- Name: disability_versions disability_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disability_versions
    ADD CONSTRAINT disability_versions_pkey PRIMARY KEY (id);


--
-- Name: educations educations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY educations
    ADD CONSTRAINT educations_pkey PRIMARY KEY (id);


--
-- Name: educations_versions educations_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY educations_versions
    ADD CONSTRAINT educations_versions_pkey PRIMARY KEY (id);


--
-- Name: eligibility_determine_results eligibility_determine_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY eligibility_determine_results
    ADD CONSTRAINT eligibility_determine_results_pkey PRIMARY KEY (id);


--
-- Name: employers employers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (id);


--
-- Name: employers_versions employers_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employers_versions
    ADD CONSTRAINT employers_versions_pkey PRIMARY KEY (id);


--
-- Name: employment_details employment_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_details
    ADD CONSTRAINT employment_details_pkey PRIMARY KEY (id);


--
-- Name: employment_details_versions employment_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_details_versions
    ADD CONSTRAINT employment_details_versions_pkey PRIMARY KEY (id);


--
-- Name: employment_readiness_plan_cpp_snapshots employment_readiness_plan_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_readiness_plan_cpp_snapshots
    ADD CONSTRAINT employment_readiness_plan_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: employment_readiness_plans employment_readiness_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employment_readiness_plans
    ADD CONSTRAINT employment_readiness_plans_pkey PRIMARY KEY (id);


--
-- Name: employments employments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employments
    ADD CONSTRAINT employments_pkey PRIMARY KEY (id);


--
-- Name: employments_versions employments_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employments_versions
    ADD CONSTRAINT employments_versions_pkey PRIMARY KEY (id);


--
-- Name: entity_addresses entity_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_addresses
    ADD CONSTRAINT entity_addresses_pkey PRIMARY KEY (id);


--
-- Name: entity_addresses_versions entity_addresses_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_addresses_versions
    ADD CONSTRAINT entity_addresses_versions_pkey PRIMARY KEY (id);


--
-- Name: entity_phones entity_phones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_phones
    ADD CONSTRAINT entity_phones_pkey PRIMARY KEY (id);


--
-- Name: entity_phones_versions entity_phones_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_phones_versions
    ADD CONSTRAINT entity_phones_versions_pkey PRIMARY KEY (id);


--
-- Name: entity_question_answers entity_question_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_question_answers
    ADD CONSTRAINT entity_question_answers_pkey PRIMARY KEY (id);


--
-- Name: event_to_actions_mappings event_to_actions_mappings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY event_to_actions_mappings
    ADD CONSTRAINT event_to_actions_mappings_pkey PRIMARY KEY (id);


--
-- Name: expected_work_participation_hours expected_work_participation_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expected_work_participation_hours
    ADD CONSTRAINT expected_work_participation_hours_pkey PRIMARY KEY (id);


--
-- Name: expense_details expense_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expense_details
    ADD CONSTRAINT expense_details_pkey PRIMARY KEY (id);


--
-- Name: expense_details_versions expense_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expense_details_versions
    ADD CONSTRAINT expense_details_versions_pkey PRIMARY KEY (id);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: expenses_versions expenses_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expenses_versions
    ADD CONSTRAINT expenses_versions_pkey PRIMARY KEY (id);


--
-- Name: household_members hh_member_household_id_and_client_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_members
    ADD CONSTRAINT hh_member_household_id_and_client_id_unique UNIQUE (household_id, client_id);


--
-- Name: household_member_step_statuses household_member_step_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_member_step_statuses
    ADD CONSTRAINT household_member_step_statuses_pkey PRIMARY KEY (id);


--
-- Name: household_members household_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_members
    ADD CONSTRAINT household_members_pkey PRIMARY KEY (id);


--
-- Name: households households_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY households
    ADD CONSTRAINT households_pkey PRIMARY KEY (id);


--
-- Name: immunizations immunizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY immunizations
    ADD CONSTRAINT immunizations_pkey PRIMARY KEY (id);


--
-- Name: import_data_from_files import_data_from_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY import_data_from_files
    ADD CONSTRAINT import_data_from_files_pkey PRIMARY KEY (id);


--
-- Name: in_state_payments in_st_paymnt_client_id_payment_month_payment_type_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY in_state_payments
    ADD CONSTRAINT in_st_paymnt_client_id_payment_month_payment_type_unique UNIQUE (client_id, payment_month, payment_type);


--
-- Name: in_state_payments in_state_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY in_state_payments
    ADD CONSTRAINT in_state_payments_pkey PRIMARY KEY (id);


--
-- Name: income_detail_adjust_reasons income_detail_adjust_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_detail_adjust_reasons
    ADD CONSTRAINT income_detail_adjust_reasons_pkey PRIMARY KEY (id);


--
-- Name: income_detail_adjust_versions income_detail_adjust_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_detail_adjust_versions
    ADD CONSTRAINT income_detail_adjust_versions_pkey PRIMARY KEY (id);


--
-- Name: income_details income_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_details
    ADD CONSTRAINT income_details_pkey PRIMARY KEY (id);


--
-- Name: income_details_versions income_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_details_versions
    ADD CONSTRAINT income_details_versions_pkey PRIMARY KEY (id);


--
-- Name: incomes incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);


--
-- Name: incomes_versions incomes_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY incomes_versions
    ADD CONSTRAINT incomes_versions_pkey PRIMARY KEY (id);


--
-- Name: instate_payment_versions instate_payment_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY instate_payment_versions
    ADD CONSTRAINT instate_payment_versions_pkey PRIMARY KEY (id);


--
-- Name: line_item_history_versions line_item_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY line_item_history_versions
    ADD CONSTRAINT line_item_history_versions_pkey PRIMARY KEY (id);


--
-- Name: local_office_informations local_office_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY local_office_informations
    ADD CONSTRAINT local_office_informations_pkey PRIMARY KEY (id);


--
-- Name: nightly_batch_processes nightly_batch_processes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY nightly_batch_processes
    ADD CONSTRAINT nightly_batch_processes_pkey PRIMARY KEY (id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: notes_versions notes_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes_versions
    ADD CONSTRAINT notes_versions_pkey PRIMARY KEY (id);


--
-- Name: notice_generation_details notice_generation_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_generation_details
    ADD CONSTRAINT notice_generation_details_pkey PRIMARY KEY (id);


--
-- Name: notice_generations notice_generations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_generations
    ADD CONSTRAINT notice_generations_pkey PRIMARY KEY (id);


--
-- Name: notice_texts notice_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notice_texts
    ADD CONSTRAINT notice_texts_pkey PRIMARY KEY (id);


--
-- Name: out_of_state_payments out_of_state_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY out_of_state_payments
    ADD CONSTRAINT out_of_state_payments_pkey PRIMARY KEY (id);


--
-- Name: outcomes outcomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY outcomes
    ADD CONSTRAINT outcomes_pkey PRIMARY KEY (id);


--
-- Name: outcomes_versions outcomes_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY outcomes_versions
    ADD CONSTRAINT outcomes_versions_pkey PRIMARY KEY (id);


--
-- Name: outofstate_payments_versions outofstate_payments_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY outofstate_payments_versions
    ADD CONSTRAINT outofstate_payments_versions_pkey PRIMARY KEY (id);


--
-- Name: payment_line_items payment_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_line_items
    ADD CONSTRAINT payment_line_items_pkey PRIMARY KEY (id);


--
-- Name: payment_line_items_versions payment_line_items_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_line_items_versions
    ADD CONSTRAINT payment_line_items_versions_pkey PRIMARY KEY (id);


--
-- Name: program_benefit_members pbm_run_id_month_seq_mem_seq_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_members
    ADD CONSTRAINT pbm_run_id_month_seq_mem_seq_unique UNIQUE (run_id, month_sequence, member_sequence);


--
-- Name: program_wizards pg_wizard_run_id_and_month_sequence_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards
    ADD CONSTRAINT pg_wizard_run_id_and_month_sequence_unique UNIQUE (run_id, month_sequence);


--
-- Name: pgu_actions pgu_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_actions
    ADD CONSTRAINT pgu_actions_pkey PRIMARY KEY (id);


--
-- Name: pgu_actions_versions pgu_actions_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_actions_versions
    ADD CONSTRAINT pgu_actions_versions_pkey PRIMARY KEY (id);


--
-- Name: program_unit_members pgu_pgu_id_client_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_members
    ADD CONSTRAINT pgu_pgu_id_client_id_unique UNIQUE (program_unit_id, client_id);


--
-- Name: pgu_task_owners_versions pgu_task_owners_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pgu_task_owners_versions
    ADD CONSTRAINT pgu_task_owners_versions_pkey PRIMARY KEY (id);


--
-- Name: phones phones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: phones_versions phones_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones_versions
    ADD CONSTRAINT phones_versions_pkey PRIMARY KEY (id);


--
-- Name: potential_intake_clients potential_intake_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY potential_intake_clients
    ADD CONSTRAINT potential_intake_clients_pkey PRIMARY KEY (id);


--
-- Name: pregnancies pregnancies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pregnancies
    ADD CONSTRAINT pregnancies_pkey PRIMARY KEY (id);


--
-- Name: pregnancy_versions pregnancy_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pregnancy_versions
    ADD CONSTRAINT pregnancy_versions_pkey PRIMARY KEY (id);


--
-- Name: prescreen_assessment_answers prescreen_assessment_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_assessment_answers
    ADD CONSTRAINT prescreen_assessment_answers_pkey PRIMARY KEY (id);


--
-- Name: prescreen_household_members prescreen_household_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_members
    ADD CONSTRAINT prescreen_household_members_pkey PRIMARY KEY (id);


--
-- Name: prescreen_household_q_answers prescreen_household_q_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_q_answers
    ADD CONSTRAINT prescreen_household_q_answers_pkey PRIMARY KEY (id);


--
-- Name: prescreen_household_results prescreen_household_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_household_results
    ADD CONSTRAINT prescreen_household_results_pkey PRIMARY KEY (id);


--
-- Name: prescreen_households prescreen_households_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescreen_households
    ADD CONSTRAINT prescreen_households_pkey PRIMARY KEY (id);


--
-- Name: primary_contacts primary_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY primary_contacts
    ADD CONSTRAINT primary_contacts_pkey PRIMARY KEY (id);


--
-- Name: program_benefit_details program_benefit_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_details
    ADD CONSTRAINT program_benefit_details_pkey PRIMARY KEY (id);


--
-- Name: program_benefit_members program_benefit_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_members
    ADD CONSTRAINT program_benefit_members_pkey PRIMARY KEY (id);


--
-- Name: program_benft_detl_versions program_benft_detl_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benft_detl_versions
    ADD CONSTRAINT program_benft_detl_versions_pkey PRIMARY KEY (id);


--
-- Name: program_benft_membr_versions program_benft_membr_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benft_membr_versions
    ADD CONSTRAINT program_benft_membr_versions_pkey PRIMARY KEY (id);


--
-- Name: program_member_details program_member_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_details
    ADD CONSTRAINT program_member_details_pkey PRIMARY KEY (id);


--
-- Name: program_member_summaries program_member_summaries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_summaries
    ADD CONSTRAINT program_member_summaries_pkey PRIMARY KEY (id);


--
-- Name: program_membr_detil_versions program_membr_detil_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_membr_detil_versions
    ADD CONSTRAINT program_membr_detil_versions_pkey PRIMARY KEY (id);


--
-- Name: program_month_summaries program_month_summaries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_month_summaries
    ADD CONSTRAINT program_month_summaries_pkey PRIMARY KEY (id);


--
-- Name: program_standard_details program_standard_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_standard_details
    ADD CONSTRAINT program_standard_details_pkey PRIMARY KEY (id);


--
-- Name: program_standards program_standards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_standards
    ADD CONSTRAINT program_standards_pkey PRIMARY KEY (id);


--
-- Name: program_unit_members program_unit_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_members
    ADD CONSTRAINT program_unit_members_pkey PRIMARY KEY (id);


--
-- Name: program_unit_membr_versions program_unit_membr_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_membr_versions
    ADD CONSTRAINT program_unit_membr_versions_pkey PRIMARY KEY (id);


--
-- Name: program_unit_partcpatn_versions program_unit_partcpatn_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_partcpatn_versions
    ADD CONSTRAINT program_unit_partcpatn_versions_pkey PRIMARY KEY (id);


--
-- Name: program_unit_participations program_unit_participations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_participations
    ADD CONSTRAINT program_unit_participations_pkey PRIMARY KEY (id);


--
-- Name: program_unit_representatives program_unit_representatives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_representatives
    ADD CONSTRAINT program_unit_representatives_pkey PRIMARY KEY (id);


--
-- Name: program_unit_reprztatv_versions program_unit_reprztatv_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_reprztatv_versions
    ADD CONSTRAINT program_unit_reprztatv_versions_pkey PRIMARY KEY (id);


--
-- Name: program_unit_size_standard_details program_unit_size_standard_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_size_standard_details
    ADD CONSTRAINT program_unit_size_standard_details_pkey PRIMARY KEY (id);


--
-- Name: program_unit_size_standards program_unit_size_standards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_size_standards
    ADD CONSTRAINT program_unit_size_standards_pkey PRIMARY KEY (id);


--
-- Name: program_unit_state_transitions program_unit_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_state_transitions
    ADD CONSTRAINT program_unit_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: program_unit_task_owners program_unit_task_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_task_owners
    ADD CONSTRAINT program_unit_task_owners_pkey PRIMARY KEY (id);


--
-- Name: program_units program_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_units
    ADD CONSTRAINT program_units_pkey PRIMARY KEY (id);


--
-- Name: program_units_versions program_units_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_units_versions
    ADD CONSTRAINT program_units_versions_pkey PRIMARY KEY (id);


--
-- Name: program_wizard_reasons program_wizard_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizard_reasons
    ADD CONSTRAINT program_wizard_reasons_pkey PRIMARY KEY (id);


--
-- Name: program_wizards program_wizards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards
    ADD CONSTRAINT program_wizards_pkey PRIMARY KEY (id);


--
-- Name: program_wizards program_wizards_run_id_month_seq_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards
    ADD CONSTRAINT program_wizards_run_id_month_seq_unique UNIQUE (run_id, month_sequence);


--
-- Name: program_wizards_versions program_wizards_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards_versions
    ADD CONSTRAINT program_wizards_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_agreement_area_versions provider_agreement_area_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_area_versions
    ADD CONSTRAINT provider_agreement_area_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_agreement_areas provider_agreement_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_areas
    ADD CONSTRAINT provider_agreement_areas_pkey PRIMARY KEY (id);


--
-- Name: provider_agreement_state_transitions provider_agreement_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreement_state_transitions
    ADD CONSTRAINT provider_agreement_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: provider_agreements provider_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreements
    ADD CONSTRAINT provider_agreements_pkey PRIMARY KEY (id);


--
-- Name: provider_agreements_versions provider_agreements_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_agreements_versions
    ADD CONSTRAINT provider_agreements_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_app_users provider_app_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_app_users
    ADD CONSTRAINT provider_app_users_pkey PRIMARY KEY (id);


--
-- Name: provider_area_avail_versions provider_area_avail_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_area_avail_versions
    ADD CONSTRAINT provider_area_avail_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_invoice_histories provider_invoice_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoice_histories
    ADD CONSTRAINT provider_invoice_histories_pkey PRIMARY KEY (id);


--
-- Name: provider_invoice_state_transitions provider_invoice_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoice_state_transitions
    ADD CONSTRAINT provider_invoice_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: provider_invoices provider_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoices
    ADD CONSTRAINT provider_invoices_pkey PRIMARY KEY (id);


--
-- Name: provider_invoices_versions provider_invoices_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_invoices_versions
    ADD CONSTRAINT provider_invoices_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_languages provider_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_languages
    ADD CONSTRAINT provider_languages_pkey PRIMARY KEY (id);


--
-- Name: provider_languages_versions provider_languages_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_languages_versions
    ADD CONSTRAINT provider_languages_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_service_area_availabilities provider_service_area_availabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_area_availabilities
    ADD CONSTRAINT provider_service_area_availabilities_pkey PRIMARY KEY (id);


--
-- Name: provider_service_area_versions provider_service_area_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_area_versions
    ADD CONSTRAINT provider_service_area_versions_pkey PRIMARY KEY (id);


--
-- Name: provider_service_areas provider_service_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_service_areas
    ADD CONSTRAINT provider_service_areas_pkey PRIMARY KEY (id);


--
-- Name: provider_services provider_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_services
    ADD CONSTRAINT provider_services_pkey PRIMARY KEY (id);


--
-- Name: provider_services_versions provider_services_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provider_services_versions
    ADD CONSTRAINT provider_services_versions_pkey PRIMARY KEY (id);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: providers_versions providers_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY providers_versions
    ADD CONSTRAINT providers_versions_pkey PRIMARY KEY (id);


--
-- Name: recommendations recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recommendations
    ADD CONSTRAINT recommendations_pkey PRIMARY KEY (id);


--
-- Name: resource_adjustments resource_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_adjustments
    ADD CONSTRAINT resource_adjustments_pkey PRIMARY KEY (id);


--
-- Name: resource_adjustments_versions resource_adjustments_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_adjustments_versions
    ADD CONSTRAINT resource_adjustments_versions_pkey PRIMARY KEY (id);


--
-- Name: resource_details resource_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_details
    ADD CONSTRAINT resource_details_pkey PRIMARY KEY (id);


--
-- Name: resource_details_versions resource_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_details_versions
    ADD CONSTRAINT resource_details_versions_pkey PRIMARY KEY (id);


--
-- Name: resource_uses resource_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_uses
    ADD CONSTRAINT resource_uses_pkey PRIMARY KEY (id);


--
-- Name: resource_uses_versions resource_uses_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_uses_versions
    ADD CONSTRAINT resource_uses_versions_pkey PRIMARY KEY (id);


--
-- Name: resources resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (id);


--
-- Name: resources_versions resources_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resources_versions
    ADD CONSTRAINT resources_versions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: ruby_element_reltns ruby_element_reltns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ruby_element_reltns
    ADD CONSTRAINT ruby_element_reltns_pkey PRIMARY KEY (id);


--
-- Name: ruby_elements ruby_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ruby_elements
    ADD CONSTRAINT ruby_elements_pkey PRIMARY KEY (id);


--
-- Name: rule_adjustments rule_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_adjustments
    ADD CONSTRAINT rule_adjustments_pkey PRIMARY KEY (id);


--
-- Name: rule_date_param_details rule_date_param_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_date_param_details
    ADD CONSTRAINT rule_date_param_details_pkey PRIMARY KEY (id);


--
-- Name: rule_date_params rule_date_params_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_date_params
    ADD CONSTRAINT rule_date_params_pkey PRIMARY KEY (id);


--
-- Name: rule_details rule_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_details
    ADD CONSTRAINT rule_details_pkey PRIMARY KEY (id);


--
-- Name: rule_disallows rule_disallows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_disallows
    ADD CONSTRAINT rule_disallows_pkey PRIMARY KEY (id);


--
-- Name: rule_results rule_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rule_results
    ADD CONSTRAINT rule_results_pkey PRIMARY KEY (id);


--
-- Name: rules rules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rules
    ADD CONSTRAINT rules_pkey PRIMARY KEY (id);


--
-- Name: sanction_details sanction_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanction_details
    ADD CONSTRAINT sanction_details_pkey PRIMARY KEY (id);


--
-- Name: sanction_details_versions sanction_details_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanction_details_versions
    ADD CONSTRAINT sanction_details_versions_pkey PRIMARY KEY (id);


--
-- Name: sanctions sanctions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions
    ADD CONSTRAINT sanctions_pkey PRIMARY KEY (id);


--
-- Name: sanctions_versions sanctions_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions_versions
    ADD CONSTRAINT sanctions_versions_pkey PRIMARY KEY (id);


--
-- Name: schedule_cpp_snapshots schedule_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_cpp_snapshots
    ADD CONSTRAINT schedule_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: schedule_extensions schedule_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_extensions
    ADD CONSTRAINT schedule_extensions_pkey PRIMARY KEY (id);


--
-- Name: schedule_extensions_versions schedule_extensions_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_extensions_versions
    ADD CONSTRAINT schedule_extensions_versions_pkey PRIMARY KEY (id);


--
-- Name: schedules schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);


--
-- Name: schedules_versions schedules_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedules_versions
    ADD CONSTRAINT schedules_versions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: schools schools_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);


--
-- Name: schools_versions schools_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schools_versions
    ADD CONSTRAINT schools_versions_pkey PRIMARY KEY (id);


--
-- Name: screening_engines screening_engines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY screening_engines
    ADD CONSTRAINT screening_engines_pkey PRIMARY KEY (id);


--
-- Name: screening_ineligible_codes screening_ineligible_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY screening_ineligible_codes
    ADD CONSTRAINT screening_ineligible_codes_pkey PRIMARY KEY (id);


--
-- Name: seriz_auth_line_items_versions seriz_auth_line_items_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY seriz_auth_line_items_versions
    ADD CONSTRAINT seriz_auth_line_items_versions_pkey PRIMARY KEY (id);


--
-- Name: service_authorization_cpp_snapshots service_authorization_cpp_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_cpp_snapshots
    ADD CONSTRAINT service_authorization_cpp_snapshots_pkey PRIMARY KEY (id);


--
-- Name: service_authorization_line_item_histories service_authorization_line_item_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_item_histories
    ADD CONSTRAINT service_authorization_line_item_histories_pkey PRIMARY KEY (id);


--
-- Name: service_authorization_line_item_state_transitions service_authorization_line_item_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_item_state_transitions
    ADD CONSTRAINT service_authorization_line_item_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: service_authorization_line_items_invoices service_authorization_line_items_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_items_invoices
    ADD CONSTRAINT service_authorization_line_items_invoices_pkey PRIMARY KEY (id);


--
-- Name: service_authorization_line_items service_authorization_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorization_line_items
    ADD CONSTRAINT service_authorization_line_items_pkey PRIMARY KEY (id);


--
-- Name: service_authorizations service_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorizations
    ADD CONSTRAINT service_authorizations_pkey PRIMARY KEY (id);


--
-- Name: service_authorizations_versions service_authorizations_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_authorizations_versions
    ADD CONSTRAINT service_authorizations_versions_pkey PRIMARY KEY (id);


--
-- Name: service_programs service_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_programs
    ADD CONSTRAINT service_programs_pkey PRIMARY KEY (id);


--
-- Name: service_programs_versions service_programs_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_programs_versions
    ADD CONSTRAINT service_programs_versions_pkey PRIMARY KEY (id);


--
-- Name: service_schedules service_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_schedules
    ADD CONSTRAINT service_schedules_pkey PRIMARY KEY (id);


--
-- Name: service_schedules_versions service_schedules_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_schedules_versions
    ADD CONSTRAINT service_schedules_versions_pkey PRIMARY KEY (id);


--
-- Name: standard_recommendations standard_recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY standard_recommendations
    ADD CONSTRAINT standard_recommendations_pkey PRIMARY KEY (id);


--
-- Name: supl_retro_bns_payments supl_retro_bns_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY supl_retro_bns_payments
    ADD CONSTRAINT supl_retro_bns_payments_pkey PRIMARY KEY (id);


--
-- Name: supl_retro_payment_versions supl_retro_payment_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY supl_retro_payment_versions
    ADD CONSTRAINT supl_retro_payment_versions_pkey PRIMARY KEY (id);


--
-- Name: sys_parm_categories_versions sys_parm_categories_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sys_parm_categories_versions
    ADD CONSTRAINT sys_parm_categories_versions_pkey PRIMARY KEY (id);


--
-- Name: system_param_categories system_param_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_param_categories
    ADD CONSTRAINT system_param_categories_pkey PRIMARY KEY (id);


--
-- Name: system_params system_params_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_params
    ADD CONSTRAINT system_params_pkey PRIMARY KEY (id);


--
-- Name: system_params_versions system_params_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_params_versions
    ADD CONSTRAINT system_params_versions_pkey PRIMARY KEY (id);


--
-- Name: tepc_ssn_clientid_answer tepc_ssn_clientid_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tepc_ssn_clientid_answer
    ADD CONSTRAINT tepc_ssn_clientid_answer_pkey PRIMARY KEY (id);


--
-- Name: tepc_temp tepc_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tepc_temp
    ADD CONSTRAINT tepc_temp_pkey PRIMARY KEY (id);


--
-- Name: time_limits time_limits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY time_limits
    ADD CONSTRAINT time_limits_pkey PRIMARY KEY (id);


--
-- Name: time_limits_versions time_limits_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY time_limits_versions
    ADD CONSTRAINT time_limits_versions_pkey PRIMARY KEY (id);


--
-- Name: user_local_offices user_local_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_local_offices
    ADD CONSTRAINT user_local_offices_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_versions users_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users_versions
    ADD CONSTRAINT users_versions_pkey PRIMARY KEY (id);


--
-- Name: wadc_temps wadc_temps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wadc_temps
    ADD CONSTRAINT wadc_temps_pkey PRIMARY KEY (id);


--
-- Name: work_queue_local_office_subscriptions work_queue_local_office_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_local_office_subscriptions
    ADD CONSTRAINT work_queue_local_office_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: work_queue_state_transitions work_queue_state_transitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_state_transitions
    ADD CONSTRAINT work_queue_state_transitions_pkey PRIMARY KEY (id);


--
-- Name: work_queue_user_subscriptions work_queue_user_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_user_subscriptions
    ADD CONSTRAINT work_queue_user_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: work_queue_versions work_queue_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queue_versions
    ADD CONSTRAINT work_queue_versions_pkey PRIMARY KEY (id);


--
-- Name: work_queues work_queues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_queues
    ADD CONSTRAINT work_queues_pkey PRIMARY KEY (id);


--
-- Name: work_tasks work_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_tasks
    ADD CONSTRAINT work_tasks_pkey PRIMARY KEY (id);


--
-- Name: work_tasks_versions work_tasks_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_tasks_versions
    ADD CONSTRAINT work_tasks_versions_pkey PRIMARY KEY (id);


--
-- Name: index_access_rights_on_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_access_rights_on_role_id ON access_rights USING btree (role_id);


--
-- Name: index_access_rights_on_ruby_element_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_access_rights_on_ruby_element_id ON access_rights USING btree (ruby_element_id);


--
-- Name: index_account_numbers_on_representative_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_account_numbers_on_representative_id ON account_numbers USING btree (representative_id);


--
-- Name: index_action_plan_details_on_action_plan_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plan_details_on_action_plan_id ON action_plan_details USING btree (action_plan_id);


--
-- Name: index_action_plan_details_on_barrier_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plan_details_on_barrier_id ON action_plan_details USING btree (barrier_id);


--
-- Name: index_action_plan_details_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plan_details_on_provider_id ON action_plan_details USING btree (provider_id);


--
-- Name: index_action_plan_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plan_details_versions_on_item_type_and_item_id ON action_plan_details_versions USING btree (item_type, item_id);


--
-- Name: index_action_plans_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plans_on_client_id ON action_plans USING btree (client_id);


--
-- Name: index_action_plans_on_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plans_on_household_id ON action_plans USING btree (household_id);


--
-- Name: index_action_plans_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plans_on_program_unit_id ON action_plans USING btree (program_unit_id);


--
-- Name: index_action_plans_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_action_plans_versions_on_item_type_and_item_id ON action_plans_versions USING btree (item_type, item_id);


--
-- Name: index_activity_hours_on_action_plan_detail_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_activity_hours_on_action_plan_detail_id ON activity_hours USING btree (action_plan_detail_id);


--
-- Name: index_activity_hours_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_activity_hours_on_client_id ON activity_hours USING btree (client_id);


--
-- Name: index_activity_hours_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_activity_hours_versions_on_item_type_and_item_id ON activity_hours_versions USING btree (item_type, item_id);


--
-- Name: index_address_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_address_versions_on_item_type_and_item_id ON address_versions USING btree (item_type, item_id);


--
-- Name: index_alerts_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_alerts_versions_on_item_type_and_item_id ON alerts_versions USING btree (item_type, item_id);


--
-- Name: index_alien_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_alien_versions_on_item_type_and_item_id ON alien_versions USING btree (item_type, item_id);


--
-- Name: index_aliens_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_aliens_on_client_id ON aliens USING btree (client_id);


--
-- Name: index_app_elgblty_rslts_on_application_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_app_elgblty_rslts_on_application_id ON application_eligibility_results USING btree (application_id);


--
-- Name: index_app_elgblty_rslts_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_app_elgblty_rslts_on_client_id ON application_eligibility_results USING btree (client_id);


--
-- Name: index_app_elig_results_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_app_elig_results_versions_on_item_type_and_item_id ON app_elig_results_versions USING btree (item_type, item_id);


--
-- Name: index_app_service_pgm_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_app_service_pgm_versions_on_item_type_and_item_id ON app_service_pgm_versions USING btree (item_type, item_id);


--
-- Name: index_application_members_on_client_application_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_members_on_client_application_id ON application_members USING btree (client_application_id);


--
-- Name: index_application_members_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_members_on_client_id ON application_members USING btree (client_id);


--
-- Name: index_application_members_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_members_versions_on_item_type_and_item_id ON application_members_versions USING btree (item_type, item_id);


--
-- Name: index_application_screenings_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_screenings_versions_on_item_type_and_item_id ON application_screenings_versions USING btree (item_type, item_id);


--
-- Name: index_application_service_programs_on_client_application_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_service_programs_on_client_application_id ON application_service_programs USING btree (client_application_id);


--
-- Name: index_application_service_programs_on_service_program_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_service_programs_on_service_program_id ON application_service_programs USING btree (service_program_id);


--
-- Name: index_assessment_barrier_details_on_assessment_barrier_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_barrier_details_on_assessment_barrier_id ON assessment_barrier_details USING btree (assessment_barrier_id);


--
-- Name: index_assessment_barrier_details_on_assessment_sub_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_barrier_details_on_assessment_sub_section_id ON assessment_barrier_details USING btree (assessment_sub_section_id);


--
-- Name: index_assessment_barriers_on_client_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_barriers_on_client_assessment_id ON assessment_barriers USING btree (client_assessment_id);


--
-- Name: index_assessment_careers_on_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_careers_on_assessment_id ON assessment_careers USING btree (assessment_id);


--
-- Name: index_assessment_careers_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_careers_on_client_id ON assessment_careers USING btree (client_id);


--
-- Name: index_assessment_question_metadata_on_assessment_question_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_question_metadata_on_assessment_question_id ON assessment_question_metadata USING btree (assessment_question_id);


--
-- Name: index_assessment_questions_on_assessment_sub_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_questions_on_assessment_sub_section_id ON assessment_questions USING btree (assessment_sub_section_id);


--
-- Name: index_assessment_strengths_on_assessment_sub_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_strengths_on_assessment_sub_section_id ON assessment_strengths USING btree (assessment_sub_section_id);


--
-- Name: index_assessment_strengths_on_client_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_strengths_on_client_assessment_id ON assessment_strengths USING btree (client_assessment_id);


--
-- Name: index_assessment_sub_sections_on_assessment_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assessment_sub_sections_on_assessment_section_id ON assessment_sub_sections USING btree (assessment_section_id);


--
-- Name: index_assignments_on_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assignments_on_role_id ON assignments USING btree (role_id);


--
-- Name: index_assignments_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assignments_on_user_id ON assignments USING btree (user_id);


--
-- Name: index_assignments_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assignments_versions_on_item_type_and_item_id ON assignments_versions USING btree (item_type, item_id);


--
-- Name: index_assmnt_b_r_on_client_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assmnt_b_r_on_client_assessment_id ON assessment_barrier_recommendations USING btree (client_assessment_id);


--
-- Name: index_audit_trail_expense_detail_secs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_expense_detail_secs_on_audit_trail_masters_id ON audit_trail_expense_detail_secs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_expense_details_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_expense_details_on_audit_trail_masters_id ON audit_trail_expense_details USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_inc_adj_secs_on_audit_trail_income_details_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_inc_adj_secs_on_audit_trail_income_details_id ON audit_trail_inc_adj_secs USING btree (audit_trail_income_details_id);


--
-- Name: index_audit_trail_inc_adj_secs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_inc_adj_secs_on_audit_trail_masters_id ON audit_trail_inc_adj_secs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_inc_adjs_on_audit_trail_income_details_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_inc_adjs_on_audit_trail_income_details_id ON audit_trail_inc_adjs USING btree (audit_trail_income_details_id);


--
-- Name: index_audit_trail_inc_adjs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_inc_adjs_on_audit_trail_masters_id ON audit_trail_inc_adjs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_inc_detail_secs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_inc_detail_secs_on_audit_trail_masters_id ON audit_trail_inc_detail_secs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_income_details_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_income_details_on_audit_trail_masters_id ON audit_trail_income_details USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_res_detail_secs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_res_detail_secs_on_audit_trail_masters_id ON audit_trail_res_detail_secs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_res_details_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_res_details_on_audit_trail_masters_id ON audit_trail_res_details USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_shared_secs_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_shared_secs_on_audit_trail_masters_id ON audit_trail_shared_secs USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_shared_secs_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_shared_secs_on_client_id ON audit_trail_shared_secs USING btree (client_id);


--
-- Name: index_audit_trail_shareds_on_audit_trail_masters_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_shareds_on_audit_trail_masters_id ON audit_trail_shareds USING btree (audit_trail_masters_id);


--
-- Name: index_audit_trail_shareds_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_trail_shareds_on_client_id ON audit_trail_shareds USING btree (client_id);


--
-- Name: index_benefits_on_budget_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_benefits_on_budget_unit_id ON benefits USING btree (budget_unit_id);


--
-- Name: index_budget_units_on_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_budget_units_on_household_id ON budget_units USING btree (household_id);


--
-- Name: index_cl_incomes_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_incomes_on_client_id ON client_incomes USING btree (client_id);


--
-- Name: index_cl_incomes_on_income_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_incomes_on_income_id ON client_incomes USING btree (income_id);


--
-- Name: index_cl_relationships_on_from_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_relationships_on_from_client_id ON client_relationships USING btree (from_client_id);


--
-- Name: index_cl_relationships_on_to_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_relationships_on_to_client_id ON client_relationships USING btree (to_client_id);


--
-- Name: index_cl_resources_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_resources_on_client_id ON client_resources USING btree (client_id);


--
-- Name: index_cl_resources_on_resource_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cl_resources_on_resource_id ON client_resources USING btree (resource_id);


--
-- Name: index_client_addresses_on_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_addresses_on_address_id ON client_addresses USING btree (address_id);


--
-- Name: index_client_addresses_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_addresses_on_client_id ON client_addresses USING btree (client_id);


--
-- Name: index_client_applications_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_applications_versions_on_item_type_and_item_id ON client_applications_versions USING btree (item_type, item_id);


--
-- Name: index_client_assessment_answers_on_client_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_assessment_answers_on_client_assessment_id ON client_assessment_answers USING btree (client_assessment_id);


--
-- Name: index_client_assessment_cpp_snapshots_on_career_pathway_plan_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_assessment_cpp_snapshots_on_career_pathway_plan_id ON client_assessment_cpp_snapshots USING btree (career_pathway_plan_id);


--
-- Name: index_client_barriers_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_barriers_on_client_id ON client_barriers USING btree (client_id);


--
-- Name: index_client_barriers_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_barriers_versions_on_item_type_and_item_id ON client_barriers_versions USING btree (item_type, item_id);


--
-- Name: index_client_characteristic_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_characteristic_versions_on_item_type_and_item_id ON client_characteristic_versions USING btree (item_type, item_id);


--
-- Name: index_client_characteristics_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_characteristics_on_client_id ON client_characteristics USING btree (client_id);


--
-- Name: index_client_doc_verfications_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_doc_verfications_on_client_id ON client_doc_verfications USING btree (client_id);


--
-- Name: index_client_doc_verfications_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_doc_verfications_versions_on_item_type_and_item_id ON client_doc_verfications_versions USING btree (item_type, item_id);


--
-- Name: index_client_emails_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_emails_on_client_id ON client_emails USING btree (client_id);


--
-- Name: index_client_emails_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_emails_versions_on_item_type_and_item_id ON client_emails_versions USING btree (item_type, item_id);


--
-- Name: index_client_expenses_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_expenses_on_client_id ON client_expenses USING btree (client_id);


--
-- Name: index_client_expenses_on_expense_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_expenses_on_expense_id ON client_expenses USING btree (expense_id);


--
-- Name: index_client_expenses_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_expenses_versions_on_item_type_and_item_id ON client_expenses_versions USING btree (item_type, item_id);


--
-- Name: index_client_immunization_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_immunization_versions_on_item_type_and_item_id ON client_immunization_versions USING btree (item_type, item_id);


--
-- Name: index_client_immunizations_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_immunizations_on_client_id ON client_immunizations USING btree (client_id);


--
-- Name: index_client_incomes_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_incomes_on_client_id ON client_incomes USING btree (client_id);


--
-- Name: index_client_incomes_on_income_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_incomes_on_income_id ON client_incomes USING btree (income_id);


--
-- Name: index_client_incomes_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_incomes_versions_on_item_type_and_item_id ON client_incomes_versions USING btree (item_type, item_id);


--
-- Name: index_client_notes_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_notes_on_client_id ON client_notes USING btree (client_id);


--
-- Name: index_client_parental_rspabilities_on_client_relationship_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_parental_rspabilities_on_client_relationship_id ON client_parental_rspabilities USING btree (client_relationship_id);


--
-- Name: index_client_race_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_race_versions_on_item_type_and_item_id ON client_race_versions USING btree (item_type, item_id);


--
-- Name: index_client_races_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_races_on_client_id ON client_races USING btree (client_id);


--
-- Name: index_client_relationship_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_relationship_versions_on_item_type_and_item_id ON client_relationship_versions USING btree (item_type, item_id);


--
-- Name: index_client_resources_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_resources_on_client_id ON client_resources USING btree (client_id);


--
-- Name: index_client_resources_on_resource_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_resources_on_resource_id ON client_resources USING btree (resource_id);


--
-- Name: index_client_resources_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_resources_versions_on_item_type_and_item_id ON client_resources_versions USING btree (item_type, item_id);


--
-- Name: index_client_scores_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_scores_on_client_id ON client_scores USING btree (client_id);


--
-- Name: index_client_scores_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_scores_versions_on_item_type_and_item_id ON client_scores_versions USING btree (item_type, item_id);


--
-- Name: index_client_skills_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_skills_on_client_id ON client_skills USING btree (client_id);


--
-- Name: index_client_skills_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_skills_versions_on_item_type_and_item_id ON client_skills_versions USING btree (item_type, item_id);


--
-- Name: index_client_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_client_versions_on_item_type_and_item_id ON client_versions USING btree (item_type, item_id);


--
-- Name: index_clnt_assmnt_answers_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clnt_assmnt_answers_versions_on_item_type_and_item_id ON clnt_assmnt_answers_versions USING btree (item_type, item_id);


--
-- Name: index_clnt_parent_rspability_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clnt_parent_rspability_versions_on_item_type_and_item_id ON clnt_parent_rspability_versions USING btree (item_type, item_id);


--
-- Name: index_code_tables_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_code_tables_versions_on_item_type_and_item_id ON code_tables_versions USING btree (item_type, item_id);


--
-- Name: index_codetable_items_on_code_table_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_codetable_items_on_code_table_id ON codetable_items USING btree (code_table_id);


--
-- Name: index_codetable_items_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_codetable_items_versions_on_item_type_and_item_id ON codetable_items_versions USING btree (item_type, item_id);


--
-- Name: index_cost_centers_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cost_centers_versions_on_item_type_and_item_id ON cost_centers_versions USING btree (item_type, item_id);


--
-- Name: index_cpp_id_st_trns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cpp_id_st_trns ON career_pathway_plan_state_transitions USING btree (career_pathway_plan_id);


--
-- Name: index_data_validations_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_data_validations_on_client_id ON data_validations USING btree (client_id);


--
-- Name: index_data_validations_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_data_validations_versions_on_item_type_and_item_id ON data_validations_versions USING btree (item_type, item_id);


--
-- Name: index_disabilities_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disabilities_on_client_id ON disabilities USING btree (client_id);


--
-- Name: index_disability_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disability_versions_on_item_type_and_item_id ON disability_versions USING btree (item_type, item_id);


--
-- Name: index_educations_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_educations_on_client_id ON educations USING btree (client_id);


--
-- Name: index_educations_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_educations_versions_on_item_type_and_item_id ON educations_versions USING btree (item_type, item_id);


--
-- Name: index_elg_det_results_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_elg_det_results_on_client_id ON eligibility_determine_results USING btree (client_id);


--
-- Name: index_elg_det_results_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_elg_det_results_on_program_unit_id ON eligibility_determine_results USING btree (program_unit_id);


--
-- Name: index_employers_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employers_versions_on_item_type_and_item_id ON employers_versions USING btree (item_type, item_id);


--
-- Name: index_employment_details_on_employment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employment_details_on_employment_id ON employment_details USING btree (employment_id);


--
-- Name: index_employment_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employment_details_versions_on_item_type_and_item_id ON employment_details_versions USING btree (item_type, item_id);


--
-- Name: index_employment_readiness_plans_on_client_assessment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employment_readiness_plans_on_client_assessment_id ON employment_readiness_plans USING btree (client_assessment_id);


--
-- Name: index_employments_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employments_on_client_id ON employments USING btree (client_id);


--
-- Name: index_employments_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employments_versions_on_item_type_and_item_id ON employments_versions USING btree (item_type, item_id);


--
-- Name: index_entity_addresses_on_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entity_addresses_on_address_id ON entity_addresses USING btree (address_id);


--
-- Name: index_entity_addresses_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entity_addresses_versions_on_item_type_and_item_id ON entity_addresses_versions USING btree (item_type, item_id);


--
-- Name: index_entity_phones_on_phone_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entity_phones_on_phone_id ON entity_phones USING btree (phone_id);


--
-- Name: index_entity_phones_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entity_phones_versions_on_item_type_and_item_id ON entity_phones_versions USING btree (item_type, item_id);


--
-- Name: index_expense_details_on_expense_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_expense_details_on_expense_id ON expense_details USING btree (expense_id);


--
-- Name: index_expense_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_expense_details_versions_on_item_type_and_item_id ON expense_details_versions USING btree (item_type, item_id);


--
-- Name: index_expenses_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_expenses_versions_on_item_type_and_item_id ON expenses_versions USING btree (item_type, item_id);


--
-- Name: index_household_member_step_statuses_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_household_member_step_statuses_on_client_id ON household_member_step_statuses USING btree (client_id);


--
-- Name: index_household_members_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_household_members_on_client_id ON household_members USING btree (client_id);


--
-- Name: index_household_members_on_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_household_members_on_household_id ON household_members USING btree (household_id);


--
-- Name: index_immunizations_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_immunizations_on_client_id ON immunizations USING btree (client_id);


--
-- Name: index_in_state_payments_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_in_state_payments_on_client_id ON in_state_payments USING btree (client_id);


--
-- Name: index_in_state_payments_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_in_state_payments_on_program_unit_id ON in_state_payments USING btree (program_unit_id);


--
-- Name: index_income_detail_adjust_reasons_on_income_detail_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_income_detail_adjust_reasons_on_income_detail_id ON income_detail_adjust_reasons USING btree (income_detail_id);


--
-- Name: index_income_detail_adjust_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_income_detail_adjust_versions_on_item_type_and_item_id ON income_detail_adjust_versions USING btree (item_type, item_id);


--
-- Name: index_income_details_on_income_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_income_details_on_income_id ON income_details USING btree (income_id);


--
-- Name: index_income_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_income_details_versions_on_item_type_and_item_id ON income_details_versions USING btree (item_type, item_id);


--
-- Name: index_incomes_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_incomes_versions_on_item_type_and_item_id ON incomes_versions USING btree (item_type, item_id);


--
-- Name: index_instate_payment_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_instate_payment_versions_on_item_type_and_item_id ON instate_payment_versions USING btree (item_type, item_id);


--
-- Name: index_line_item_history_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_line_item_history_versions_on_item_type_and_item_id ON line_item_history_versions USING btree (item_type, item_id);


--
-- Name: index_local_office_informations_on_code_table_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_local_office_informations_on_code_table_item_id ON local_office_informations USING btree (code_table_item_id);


--
-- Name: index_notes_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_versions_on_item_type_and_item_id ON notes_versions USING btree (item_type, item_id);


--
-- Name: index_notice_generation_details_on_notice_generations_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notice_generation_details_on_notice_generations_id ON notice_generation_details USING btree (notice_generations_id);


--
-- Name: index_notice_texts_on_service_program_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notice_texts_on_service_program_id ON notice_texts USING btree (service_program_id);


--
-- Name: index_out_of_state_payments_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_out_of_state_payments_on_client_id ON out_of_state_payments USING btree (client_id);


--
-- Name: index_outcomes_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_outcomes_versions_on_item_type_and_item_id ON outcomes_versions USING btree (item_type, item_id);


--
-- Name: index_outofstate_payments_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_outofstate_payments_versions_on_item_type_and_item_id ON outofstate_payments_versions USING btree (item_type, item_id);


--
-- Name: index_payment_line_items_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_payment_line_items_on_client_id ON payment_line_items USING btree (client_id);


--
-- Name: index_payment_line_items_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_payment_line_items_versions_on_item_type_and_item_id ON payment_line_items_versions USING btree (item_type, item_id);


--
-- Name: index_pgu_actions_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pgu_actions_versions_on_item_type_and_item_id ON pgu_actions_versions USING btree (item_type, item_id);


--
-- Name: index_pgu_task_owners_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pgu_task_owners_versions_on_item_type_and_item_id ON pgu_task_owners_versions USING btree (item_type, item_id);


--
-- Name: index_phones_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_phones_versions_on_item_type_and_item_id ON phones_versions USING btree (item_type, item_id);


--
-- Name: index_pregnancies_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pregnancies_on_client_id ON pregnancies USING btree (client_id);


--
-- Name: index_pregnancy_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pregnancy_versions_on_item_type_and_item_id ON pregnancy_versions USING btree (item_type, item_id);


--
-- Name: index_prescreen_household_members_on_prescreen_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prescreen_household_members_on_prescreen_household_id ON prescreen_household_members USING btree (prescreen_household_id);


--
-- Name: index_prescreen_household_q_answers_on_prescreen_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prescreen_household_q_answers_on_prescreen_household_id ON prescreen_household_q_answers USING btree (prescreen_household_id);


--
-- Name: index_prescreen_household_results_on_prescreen_household_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prescreen_household_results_on_prescreen_household_id ON prescreen_household_results USING btree (prescreen_household_id);


--
-- Name: index_program_benefit_details_on_program_wizard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benefit_details_on_program_wizard_id ON program_benefit_details USING btree (program_wizard_id);


--
-- Name: index_program_benefit_details_on_run_id_mnth_seq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benefit_details_on_run_id_mnth_seq ON program_benefit_details USING btree (run_id, month_sequence);


--
-- Name: index_program_benefit_members_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benefit_members_on_client_id ON program_benefit_members USING btree (client_id);


--
-- Name: index_program_benefit_members_on_program_wizard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benefit_members_on_program_wizard_id ON program_benefit_members USING btree (program_wizard_id);


--
-- Name: index_program_benft_detl_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benft_detl_versions_on_item_type_and_item_id ON program_benft_detl_versions USING btree (item_type, item_id);


--
-- Name: index_program_benft_membr_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_benft_membr_versions_on_item_type_and_item_id ON program_benft_membr_versions USING btree (item_type, item_id);


--
-- Name: index_program_member_details_on_run_id_mnth_seq_mem_seq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_member_details_on_run_id_mnth_seq_mem_seq ON program_member_details USING btree (run_id, month_sequence, member_sequence);


--
-- Name: index_program_member_summaries_on_run_id_mnth_seq_mem_seq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_member_summaries_on_run_id_mnth_seq_mem_seq ON program_member_summaries USING btree (run_id, month_sequence, member_sequence);


--
-- Name: index_program_membr_detil_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_membr_detil_versions_on_item_type_and_item_id ON program_membr_detil_versions USING btree (item_type, item_id);


--
-- Name: index_program_month_summaries_on_program_wizard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_month_summaries_on_program_wizard_id ON program_month_summaries USING btree (program_wizard_id);


--
-- Name: index_program_month_summaries_on_run_id_mnth_seq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_month_summaries_on_run_id_mnth_seq ON program_month_summaries USING btree (run_id, month_sequence);


--
-- Name: index_program_standard_details_on_program_standard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_standard_details_on_program_standard_id ON program_standard_details USING btree (program_standard_id);


--
-- Name: index_program_unit_id_st_trns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_id_st_trns ON program_unit_state_transitions USING btree (program_unit_id);


--
-- Name: index_program_unit_members_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_members_on_client_id ON program_unit_members USING btree (client_id);


--
-- Name: index_program_unit_members_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_members_on_program_unit_id ON program_unit_members USING btree (program_unit_id);


--
-- Name: index_program_unit_membr_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_membr_versions_on_item_type_and_item_id ON program_unit_membr_versions USING btree (item_type, item_id);


--
-- Name: index_program_unit_partcpatn_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_partcpatn_versions_on_item_type_and_item_id ON program_unit_partcpatn_versions USING btree (item_type, item_id);


--
-- Name: index_program_unit_participations_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_participations_on_program_unit_id ON program_unit_participations USING btree (program_unit_id);


--
-- Name: index_program_unit_representatives_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_representatives_on_client_id ON program_unit_representatives USING btree (client_id);


--
-- Name: index_program_unit_representatives_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_representatives_on_program_unit_id ON program_unit_representatives USING btree (program_unit_id);


--
-- Name: index_program_unit_reprztatv_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_unit_reprztatv_versions_on_item_type_and_item_id ON program_unit_reprztatv_versions USING btree (item_type, item_id);


--
-- Name: index_program_units_on_client_application_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_units_on_client_application_id ON program_units USING btree (client_application_id);


--
-- Name: index_program_units_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_units_versions_on_item_type_and_item_id ON program_units_versions USING btree (item_type, item_id);


--
-- Name: index_program_wizard_reasons_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_wizard_reasons_on_client_id ON program_wizard_reasons USING btree (client_id);


--
-- Name: index_program_wizard_reasons_on_program_wizard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_wizard_reasons_on_program_wizard_id ON program_wizard_reasons USING btree (program_wizard_id);


--
-- Name: index_program_wizards_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_wizards_on_program_unit_id ON program_wizards USING btree (program_unit_id);


--
-- Name: index_program_wizards_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_program_wizards_versions_on_item_type_and_item_id ON program_wizards_versions USING btree (item_type, item_id);


--
-- Name: index_provider_agreement_area_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_agreement_area_versions_on_item_type_and_item_id ON provider_agreement_area_versions USING btree (item_type, item_id);


--
-- Name: index_provider_agreement_areas_on_provider_agreement_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_agreement_areas_on_provider_agreement_id ON provider_agreement_areas USING btree (provider_agreement_id);


--
-- Name: index_provider_agreements_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_agreements_on_provider_id ON provider_agreements USING btree (provider_id);


--
-- Name: index_provider_agreements_on_provider_service_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_agreements_on_provider_service_id ON provider_agreements USING btree (provider_service_id);


--
-- Name: index_provider_agreements_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_agreements_versions_on_item_type_and_item_id ON provider_agreements_versions USING btree (item_type, item_id);


--
-- Name: index_provider_area_avail_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_area_avail_versions_on_item_type_and_item_id ON provider_area_avail_versions USING btree (item_type, item_id);


--
-- Name: index_provider_invoice_histories_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_invoice_histories_on_provider_id ON provider_invoice_histories USING btree (provider_id);


--
-- Name: index_provider_invoice_id_st_trns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_invoice_id_st_trns ON provider_invoice_state_transitions USING btree (provider_invoice_id);


--
-- Name: index_provider_invoices_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_invoices_on_provider_id ON provider_invoices USING btree (provider_id);


--
-- Name: index_provider_invoices_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_invoices_versions_on_item_type_and_item_id ON provider_invoices_versions USING btree (item_type, item_id);


--
-- Name: index_provider_languages_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_languages_versions_on_item_type_and_item_id ON provider_languages_versions USING btree (item_type, item_id);


--
-- Name: index_provider_service_area_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_service_area_versions_on_item_type_and_item_id ON provider_service_area_versions USING btree (item_type, item_id);


--
-- Name: index_provider_service_areas_on_provider_service_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_service_areas_on_provider_service_id ON provider_service_areas USING btree (provider_service_id);


--
-- Name: index_provider_services_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_services_on_provider_id ON provider_services USING btree (provider_id);


--
-- Name: index_provider_services_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_provider_services_versions_on_item_type_and_item_id ON provider_services_versions USING btree (item_type, item_id);


--
-- Name: index_providers_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_providers_versions_on_item_type_and_item_id ON providers_versions USING btree (item_type, item_id);


--
-- Name: index_prvdr_agrmnt_id_st_trns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prvdr_agrmnt_id_st_trns ON provider_agreement_state_transitions USING btree (provider_agreement_id);


--
-- Name: index_resource_adjustments_on_resource_detail_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_adjustments_on_resource_detail_id ON resource_adjustments USING btree (resource_detail_id);


--
-- Name: index_resource_adjustments_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_adjustments_versions_on_item_type_and_item_id ON resource_adjustments_versions USING btree (item_type, item_id);


--
-- Name: index_resource_details_on_resource_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_details_on_resource_id ON resource_details USING btree (resource_id);


--
-- Name: index_resource_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_details_versions_on_item_type_and_item_id ON resource_details_versions USING btree (item_type, item_id);


--
-- Name: index_resource_uses_on_resource_details_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_uses_on_resource_details_id ON resource_uses USING btree (resource_details_id);


--
-- Name: index_resource_uses_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_uses_versions_on_item_type_and_item_id ON resource_uses_versions USING btree (item_type, item_id);


--
-- Name: index_resources_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resources_versions_on_item_type_and_item_id ON resources_versions USING btree (item_type, item_id);


--
-- Name: index_rule_adjustments_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_adjustments_on_rule_id ON rule_adjustments USING btree (rule_id);


--
-- Name: index_rule_date_param_details_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_date_param_details_on_rule_id ON rule_date_param_details USING btree (rule_id);


--
-- Name: index_rule_details_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_details_on_rule_id ON rule_details USING btree (rule_id);


--
-- Name: index_rule_disallows_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_disallows_on_rule_id ON rule_disallows USING btree (rule_id);


--
-- Name: index_rule_results_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_results_on_client_id ON rule_results USING btree (client_id);


--
-- Name: index_rule_results_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_rule_results_on_rule_id ON rule_results USING btree (rule_id);


--
-- Name: index_sanction_details_on_sanction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sanction_details_on_sanction_id ON sanction_details USING btree (sanction_id);


--
-- Name: index_sanction_details_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sanction_details_versions_on_item_type_and_item_id ON sanction_details_versions USING btree (item_type, item_id);


--
-- Name: index_sanctions_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sanctions_on_client_id ON sanctions USING btree (client_id);


--
-- Name: index_sanctions_on_service_program_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sanctions_on_service_program_id ON sanctions USING btree (service_program_id);


--
-- Name: index_sanctions_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sanctions_versions_on_item_type_and_item_id ON sanctions_versions USING btree (item_type, item_id);


--
-- Name: index_schedule_extensions_on_schedule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_schedule_extensions_on_schedule_id ON schedule_extensions USING btree (schedule_id);


--
-- Name: index_schedule_extensions_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_schedule_extensions_versions_on_item_type_and_item_id ON schedule_extensions_versions USING btree (item_type, item_id);


--
-- Name: index_schedules_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_schedules_versions_on_item_type_and_item_id ON schedules_versions USING btree (item_type, item_id);


--
-- Name: index_schools_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_schools_versions_on_item_type_and_item_id ON schools_versions USING btree (item_type, item_id);


--
-- Name: index_screening_engines_on_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_screening_engines_on_rule_id ON screening_engines USING btree (rule_id);


--
-- Name: index_seriz_auth_line_items_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seriz_auth_line_items_versions_on_item_type_and_item_id ON seriz_auth_line_items_versions USING btree (item_type, item_id);


--
-- Name: index_servc_auth_line_item_id_st_trns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_servc_auth_line_item_id_st_trns ON service_authorization_line_item_state_transitions USING btree (service_authorization_line_item_id);


--
-- Name: index_service_authorizations_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_authorizations_on_client_id ON service_authorizations USING btree (client_id);


--
-- Name: index_service_authorizations_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_authorizations_on_program_unit_id ON service_authorizations USING btree (program_unit_id);


--
-- Name: index_service_authorizations_on_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_authorizations_on_provider_id ON service_authorizations USING btree (provider_id);


--
-- Name: index_service_authorizations_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_authorizations_versions_on_item_type_and_item_id ON service_authorizations_versions USING btree (item_type, item_id);


--
-- Name: index_service_programs_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_programs_versions_on_item_type_and_item_id ON service_programs_versions USING btree (item_type, item_id);


--
-- Name: index_service_schedules_on_service_authorization_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_schedules_on_service_authorization_id ON service_schedules USING btree (service_authorization_id);


--
-- Name: index_service_schedules_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_schedules_versions_on_item_type_and_item_id ON service_schedules_versions USING btree (item_type, item_id);


--
-- Name: index_supl_retro_bns_payments_on_program_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_supl_retro_bns_payments_on_program_unit_id ON supl_retro_bns_payments USING btree (program_unit_id);


--
-- Name: index_supl_retro_payment_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_supl_retro_payment_versions_on_item_type_and_item_id ON supl_retro_payment_versions USING btree (item_type, item_id);


--
-- Name: index_sys_parm_categories_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sys_parm_categories_versions_on_item_type_and_item_id ON sys_parm_categories_versions USING btree (item_type, item_id);


--
-- Name: index_system_params_on_system_param_categories_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_system_params_on_system_param_categories_id ON system_params USING btree (system_param_categories_id);


--
-- Name: index_system_params_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_system_params_versions_on_item_type_and_item_id ON system_params_versions USING btree (item_type, item_id);


--
-- Name: index_time_limits_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_time_limits_on_client_id ON time_limits USING btree (client_id);


--
-- Name: index_time_limits_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_time_limits_versions_on_item_type_and_item_id ON time_limits_versions USING btree (item_type, item_id);


--
-- Name: index_user_local_offices_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_local_offices_on_user_id ON user_local_offices USING btree (user_id);


--
-- Name: index_users_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_versions_on_item_type_and_item_id ON users_versions USING btree (item_type, item_id);


--
-- Name: index_work_queue_state_transitions_on_work_queue_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_work_queue_state_transitions_on_work_queue_id ON work_queue_state_transitions USING btree (work_queue_id);


--
-- Name: index_work_queue_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_work_queue_versions_on_item_type_and_item_id ON work_queue_versions USING btree (item_type, item_id);


--
-- Name: index_work_tasks_on_client_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_work_tasks_on_client_id ON work_tasks USING btree (client_id);


--
-- Name: index_work_tasks_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_work_tasks_versions_on_item_type_and_item_id ON work_tasks_versions USING btree (item_type, item_id);


--
-- Name: account_numbers account_number_representative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY account_numbers
    ADD CONSTRAINT account_number_representative_id_fkey FOREIGN KEY (representative_id) REFERENCES program_unit_representatives(id);


--
-- Name: aliens alien_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY aliens
    ADD CONSTRAINT alien_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: application_eligibility_results app_elgblty_rslts_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_eligibility_results
    ADD CONSTRAINT app_elgblty_rslts_application_id_fkey FOREIGN KEY (application_id) REFERENCES client_applications(id);


--
-- Name: application_eligibility_results app_elgblty_rslts_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_eligibility_results
    ADD CONSTRAINT app_elgblty_rslts_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: application_members app_member_client_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members
    ADD CONSTRAINT app_member_client_application_id_fkey FOREIGN KEY (client_application_id) REFERENCES client_applications(id);


--
-- Name: application_members app_member_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_members
    ADD CONSTRAINT app_member_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: application_service_programs application_service_programs_client_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_service_programs
    ADD CONSTRAINT application_service_programs_client_application_id_fkey FOREIGN KEY (client_application_id) REFERENCES client_applications(id);


--
-- Name: application_service_programs application_service_programs_service_program_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY application_service_programs
    ADD CONSTRAINT application_service_programs_service_program_id_fkey FOREIGN KEY (service_program_id) REFERENCES service_programs(id);


--
-- Name: client_expenses cl_expenses_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses
    ADD CONSTRAINT cl_expenses_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_expenses cl_expenses_expense_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_expenses
    ADD CONSTRAINT cl_expenses_expense_id_fkey FOREIGN KEY (expense_id) REFERENCES expenses(id);


--
-- Name: client_incomes cl_incomes_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes
    ADD CONSTRAINT cl_incomes_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_incomes cl_incomes_income_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_incomes
    ADD CONSTRAINT cl_incomes_income_id_fkey FOREIGN KEY (income_id) REFERENCES incomes(id);


--
-- Name: client_parental_rspabilities cl_p_r_client_relationship_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_parental_rspabilities
    ADD CONSTRAINT cl_p_r_client_relationship_id_fkey FOREIGN KEY (client_relationship_id) REFERENCES client_relationships(id);


--
-- Name: client_relationships cl_relationships_from_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationships
    ADD CONSTRAINT cl_relationships_from_client_id_fkey FOREIGN KEY (from_client_id) REFERENCES clients(id);


--
-- Name: client_relationships cl_relationships_to_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_relationships
    ADD CONSTRAINT cl_relationships_to_client_id_fkey FOREIGN KEY (to_client_id) REFERENCES clients(id);


--
-- Name: client_resources cl_resources_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources
    ADD CONSTRAINT cl_resources_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_resources cl_resources_resource_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_resources
    ADD CONSTRAINT cl_resources_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES resources(id);


--
-- Name: client_barriers client_barriers_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_barriers
    ADD CONSTRAINT client_barriers_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_characteristics client_characteristic_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_characteristics
    ADD CONSTRAINT client_characteristic_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_immunizations client_immunization_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_immunizations
    ADD CONSTRAINT client_immunization_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_notes client_notes_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_notes
    ADD CONSTRAINT client_notes_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_races client_races_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_races
    ADD CONSTRAINT client_races_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_scores client_scores_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_scores
    ADD CONSTRAINT client_scores_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: client_skills client_skills_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY client_skills
    ADD CONSTRAINT client_skills_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: codetable_items codetable_items_code_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY codetable_items
    ADD CONSTRAINT codetable_items_code_table_id_fkey FOREIGN KEY (code_table_id) REFERENCES code_tables(id);


--
-- Name: data_validations data_validations_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_validations
    ADD CONSTRAINT data_validations_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: disabilities disabilities_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disabilities
    ADD CONSTRAINT disabilities_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: educations educations_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY educations
    ADD CONSTRAINT educations_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: eligibility_determine_results elg_det_results_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY eligibility_determine_results
    ADD CONSTRAINT elg_det_results_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: eligibility_determine_results elg_det_results_program_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY eligibility_determine_results
    ADD CONSTRAINT elg_det_results_program_unit_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: eligibility_determine_results elg_det_results_run_id_month_sequence_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY eligibility_determine_results
    ADD CONSTRAINT elg_det_results_run_id_month_sequence_fkey FOREIGN KEY (run_id, month_sequence) REFERENCES program_wizards(run_id, month_sequence);


--
-- Name: employments employments_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employments
    ADD CONSTRAINT employments_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: entity_addresses entity_addresses_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_addresses
    ADD CONSTRAINT entity_addresses_address_id_fkey FOREIGN KEY (address_id) REFERENCES addresses(id);


--
-- Name: entity_phones entity_phones_phone_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY entity_phones
    ADD CONSTRAINT entity_phones_phone_id_fkey FOREIGN KEY (phone_id) REFERENCES phones(id);


--
-- Name: expense_details expense_details_expense_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY expense_details
    ADD CONSTRAINT expense_details_expense_id_fkey FOREIGN KEY (expense_id) REFERENCES expenses(id);


--
-- Name: household_members household_members_household_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY household_members
    ADD CONSTRAINT household_members_household_id_fkey FOREIGN KEY (household_id) REFERENCES households(id);


--
-- Name: in_state_payments in_state_payments_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY in_state_payments
    ADD CONSTRAINT in_state_payments_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: income_detail_adjust_reasons incm_dtl_adj_rsn_income_detail_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_detail_adjust_reasons
    ADD CONSTRAINT incm_dtl_adj_rsn_income_detail_id_fkey FOREIGN KEY (income_detail_id) REFERENCES income_details(id);


--
-- Name: income_details incm_dtl_income_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY income_details
    ADD CONSTRAINT incm_dtl_income_id_fkey FOREIGN KEY (income_id) REFERENCES incomes(id);


--
-- Name: out_of_state_payments out_of_state_payments_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY out_of_state_payments
    ADD CONSTRAINT out_of_state_payments_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: payment_line_items payment_line_items_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_line_items
    ADD CONSTRAINT payment_line_items_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: pregnancies pregnancies_clients_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pregnancies
    ADD CONSTRAINT pregnancies_clients_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: program_benefit_details program_benefit_details_program_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_details
    ADD CONSTRAINT program_benefit_details_program_wizard_id_fkey FOREIGN KEY (program_wizard_id) REFERENCES program_wizards(id);


--
-- Name: program_benefit_details program_benefit_details_run_id_mnth_seq_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_details
    ADD CONSTRAINT program_benefit_details_run_id_mnth_seq_fkey FOREIGN KEY (run_id, month_sequence) REFERENCES program_wizards(run_id, month_sequence);


--
-- Name: program_benefit_members program_benefit_members_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_members
    ADD CONSTRAINT program_benefit_members_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: program_benefit_members program_benefit_members_program_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_benefit_members
    ADD CONSTRAINT program_benefit_members_program_wizard_id_fkey FOREIGN KEY (program_wizard_id) REFERENCES program_wizards(id);


--
-- Name: program_member_details program_member_details_run_id_mnth_seq_mem_seq_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_details
    ADD CONSTRAINT program_member_details_run_id_mnth_seq_mem_seq_fkey FOREIGN KEY (run_id, month_sequence, member_sequence) REFERENCES program_benefit_members(run_id, month_sequence, member_sequence);


--
-- Name: program_member_summaries program_member_summaries_run_id_mnth_seq_mem_seq_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_member_summaries
    ADD CONSTRAINT program_member_summaries_run_id_mnth_seq_mem_seq_fkey FOREIGN KEY (run_id, month_sequence, member_sequence) REFERENCES program_benefit_members(run_id, month_sequence, member_sequence);


--
-- Name: program_month_summaries program_month_summaries_program_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_month_summaries
    ADD CONSTRAINT program_month_summaries_program_wizard_id_fkey FOREIGN KEY (program_wizard_id) REFERENCES program_wizards(id);


--
-- Name: program_month_summaries program_month_summaries_run_id_mnth_seq_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_month_summaries
    ADD CONSTRAINT program_month_summaries_run_id_mnth_seq_fkey FOREIGN KEY (run_id, month_sequence) REFERENCES program_wizards(run_id, month_sequence);


--
-- Name: program_unit_members program_unit_members_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_members
    ADD CONSTRAINT program_unit_members_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: program_unit_members program_unit_members_program_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_members
    ADD CONSTRAINT program_unit_members_program_unit_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: program_unit_participations program_unit_participations_program_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_participations
    ADD CONSTRAINT program_unit_participations_program_unit_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: program_unit_representatives program_unit_representatives_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_representatives
    ADD CONSTRAINT program_unit_representatives_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: program_unit_representatives program_unit_representatives_program_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_unit_representatives
    ADD CONSTRAINT program_unit_representatives_program_unit_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: program_units program_units_client_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_units
    ADD CONSTRAINT program_units_client_application_id_fkey FOREIGN KEY (client_application_id) REFERENCES client_applications(id);


--
-- Name: program_wizards program_wizards_program_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY program_wizards
    ADD CONSTRAINT program_wizards_program_unit_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: resource_details resource_details_resource_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resource_details
    ADD CONSTRAINT resource_details_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES resources(id);


--
-- Name: sanction_details sanction_details_sanction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanction_details
    ADD CONSTRAINT sanction_details_sanction_id_fkey FOREIGN KEY (sanction_id) REFERENCES sanctions(id);


--
-- Name: sanctions sanctions_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions
    ADD CONSTRAINT sanctions_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: sanctions sanctions_service_program_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sanctions
    ADD CONSTRAINT sanctions_service_program_id_fkey FOREIGN KEY (service_program_id) REFERENCES service_programs(id);


--
-- Name: schedule_extensions schedule_extensions_schedule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schedule_extensions
    ADD CONSTRAINT schedule_extensions_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES schedules(id);


--
-- Name: supl_retro_bns_payments supl_retro_bns_payments_program_unit_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY supl_retro_bns_payments
    ADD CONSTRAINT supl_retro_bns_payments_program_unit_id_id_fkey FOREIGN KEY (program_unit_id) REFERENCES program_units(id);


--
-- Name: system_params system_params_system_param_categories_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY system_params
    ADD CONSTRAINT system_params_system_param_categories_id_fkey FOREIGN KEY (system_param_categories_id) REFERENCES system_param_categories(id);


--
-- Name: time_limits time_limits_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY time_limits
    ADD CONSTRAINT time_limits_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- Name: work_tasks work_tasks_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_tasks
    ADD CONSTRAINT work_tasks_client_id_fkey FOREIGN KEY (client_id) REFERENCES clients(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20140611215703'),
('20140612160808'),
('20140626190747'),
('20140626193228'),
('20140626200808'),
('20140626201432'),
('20140626201849'),
('20140626202758'),
('20140626203608'),
('20140626203851'),
('20140701214439'),
('20140702134129'),
('20140702135747'),
('20140707204132'),
('20140707222445'),
('20140707223138'),
('20140707223413'),
('20140708201651'),
('20140716180326'),
('20140716182512'),
('20140716182717'),
('20140716202142'),
('20140716203857'),
('20140716205025'),
('20140716205120'),
('20140716205155'),
('20140717163839'),
('20140717164118'),
('20140717164156'),
('20140717220920'),
('20140717234554'),
('20140718150306'),
('20140718150538'),
('20140718153005'),
('20140718153932'),
('20140718154057'),
('20140718154154'),
('20140721131531'),
('20140722185306'),
('20140725142553'),
('20140725145552'),
('20140728164938'),
('20140730133027'),
('20140731210111'),
('20140801205951'),
('20140801215345'),
('20140801230355'),
('20140804141740'),
('20140804231730'),
('20140805191512'),
('20140806141501'),
('20140806194228'),
('20140806194515'),
('20140806220154'),
('20140806230333'),
('20140807173939'),
('20140807174100'),
('20140807184609'),
('20140807185435'),
('20140808132947'),
('20140808162852'),
('20140808162956'),
('20140818201108'),
('20140818203850'),
('20140819230106'),
('20140820153929'),
('20140820183528'),
('20140822160936'),
('20140829201333'),
('20140904222613'),
('20140905130433'),
('20140905131213'),
('20140905164805'),
('20140906133200'),
('20140906133258'),
('20140906133334'),
('20140906133415'),
('20140906133441'),
('20140906133511'),
('20140906133643'),
('20140906133742'),
('20140906134208'),
('20140909141206'),
('20140909141703'),
('20140910143123'),
('20140910175911'),
('20140911210559'),
('20140912140106'),
('20140913190226'),
('20140915140910'),
('20140915141736'),
('20140917153149'),
('20140917154654'),
('20140918181250'),
('20140920161213'),
('20140922203730'),
('20140923180424'),
('20140923180454'),
('20140923180534'),
('20140923203109'),
('20140924181205'),
('20140924182920'),
('20140924190729'),
('20140924203626'),
('20140924222303'),
('20140925005431'),
('20140925134143'),
('20140925134902'),
('20140925155729'),
('20140926201819'),
('20140927171240'),
('20140929194807'),
('20141001141311'),
('20141001154129'),
('20141001175759'),
('20141001204812'),
('20141002174150'),
('20141002214645'),
('20141003140122'),
('20141003145544'),
('20141003145831'),
('20141003150107'),
('20141003150336'),
('20141003213730'),
('20141004133512'),
('20141004134229'),
('20141004135904'),
('20141004140638'),
('20141004142012'),
('20141006225840'),
('20141006230008'),
('20141007213244'),
('20141007213314'),
('20141008162156'),
('20141008203331'),
('20141008212911'),
('20141009193553'),
('20141010210008'),
('20141010212239'),
('20141013201942'),
('20141014194433'),
('20141015041235'),
('20141016203359'),
('20141016213907'),
('20141017220029'),
('20141017232430'),
('20141018161010'),
('20141018163440'),
('20141018195500'),
('20141019042416'),
('20141025183750'),
('20141026171031'),
('20141029012935'),
('20141103135922'),
('20141103152414'),
('20141103153035'),
('20141103161234'),
('20141103171301'),
('20141103192827'),
('20141103202738'),
('20141104174137'),
('20141104232640'),
('20141106212217'),
('20141106230318'),
('20141109182744'),
('20141110152308'),
('20141112193809'),
('20141117194222'),
('20141119203928'),
('20141120213017'),
('20141120214436'),
('20141122172438'),
('20141122173054'),
('20141122195012'),
('20141124151352'),
('20141124152527'),
('20141125214750'),
('20141125232136'),
('20141202152859'),
('20141202172735'),
('20141202212253'),
('20141202213313'),
('20141202213951'),
('20141202214721'),
('20141202215003'),
('20141202220419'),
('20141203162541'),
('20141203162821'),
('20141203163254'),
('20141205202419'),
('20141205223415'),
('20141206170642'),
('20141206232748'),
('20141208211534'),
('20141208214022'),
('20141208215318'),
('20141208223856'),
('20141208224851'),
('20141208230433'),
('20141208230805'),
('20141209172924'),
('20141210210629'),
('20141211153416'),
('20141212142553'),
('20141213154845'),
('20141216201539'),
('20141216205825'),
('20141217142737'),
('20141217205754'),
('20141217210711'),
('20141218144016'),
('20141218161834'),
('20141218163205'),
('20141218170321'),
('20141218200612'),
('20141219145453'),
('20141220001841'),
('20141220225145'),
('20141229220422'),
('20141229232844'),
('20141229233253'),
('20141230175745'),
('20141230202611'),
('20141230202705'),
('20141231212534'),
('20141231212653'),
('20150103232506'),
('20150105155927'),
('20150105160016'),
('20150105160044'),
('20150105172731'),
('20150105184429'),
('20150105194321'),
('20150106222143'),
('20150107144409'),
('20150108142230'),
('20150108145017'),
('20150108164044'),
('20150109192021'),
('20150109211919'),
('20150112214644'),
('20150112234043'),
('20150113154210'),
('20150116225655'),
('20150116230714'),
('20150116231205'),
('20150116231516'),
('20150116231953'),
('20150116232802'),
('20150116233252'),
('20150120194725'),
('20150121000708'),
('20150121001143'),
('20150123205609'),
('20150126155854'),
('20150126190113'),
('20150127205553'),
('20150128165119'),
('20150128194117'),
('20150128230911'),
('20150129180221'),
('20150129180811'),
('20150129194045'),
('20150129194627'),
('20150129195555'),
('20150129200106'),
('20150129200442'),
('20150131230801'),
('20150202143554'),
('20150203161543'),
('20150206215326'),
('20150211233612'),
('20150211234245'),
('20150214162626'),
('20150214163235'),
('20150214164251'),
('20150214165715'),
('20150214171912'),
('20150214172857'),
('20150214173347'),
('20150214173743'),
('20150214174647'),
('20150214175206'),
('20150214175645'),
('20150214180159'),
('20150217201309'),
('20150217214409'),
('20150218184537'),
('20150219235759'),
('20150221210838'),
('20150221211325'),
('20150221211519'),
('20150221211714'),
('20150221212756'),
('20150223173830'),
('20150223174201'),
('20150223174328'),
('20150223174501'),
('20150223174626'),
('20150224194537'),
('20150226155229'),
('20150227140609'),
('20150227140925'),
('20150228162211'),
('20150228201837'),
('20150302192016'),
('20150302193537'),
('20150302211245'),
('20150302212325'),
('20150302213453'),
('20150302223552'),
('20150302231826'),
('20150302233356'),
('20150303140347'),
('20150303203646'),
('20150309204540'),
('20150317132132'),
('20150324224147'),
('20150325132558'),
('20150325135406'),
('20150326180815'),
('20150326182408'),
('20150326185654'),
('20150326191643'),
('20150326202236'),
('20150326203339'),
('20150326220727'),
('20150326221441'),
('20150326223129'),
('20150327143857'),
('20150327144705'),
('20150327145043'),
('20150327155134'),
('20150327185103'),
('20150327191057'),
('20150327191804'),
('20150327193349'),
('20150327194924'),
('20150327202844'),
('20150327205757'),
('20150327210223'),
('20150327210802'),
('20150327211139'),
('20150327212003'),
('20150327212623'),
('20150330130956'),
('20150330133416'),
('20150330142457'),
('20150330143744'),
('20150330144306'),
('20150330144621'),
('20150330145151'),
('20150330145606'),
('20150330150622'),
('20150330151318'),
('20150330153908'),
('20150330160422'),
('20150330162106'),
('20150330162727'),
('20150330164805'),
('20150330165223'),
('20150330190323'),
('20150330193409'),
('20150401153547'),
('20150402134651'),
('20150402210611'),
('20150410174607'),
('20150410194909'),
('20150414202046'),
('20150414203357'),
('20150414212249'),
('20150414212646'),
('20150415182201'),
('20150422190150'),
('20150422190701'),
('20150430165003'),
('20150507203906'),
('20150513153110'),
('20150513214120'),
('20150515215519'),
('20150518152928'),
('20150521191341'),
('20150522174806'),
('20150528161548'),
('20150528162540'),
('20150601184453'),
('20150602223849'),
('20150604153842'),
('20150604155054'),
('20150604160121'),
('20150604170045'),
('20150604191315'),
('20150604210641'),
('20150608175205'),
('20150608191939'),
('20150608192647'),
('20150608192718'),
('20150608192749'),
('20150608192824'),
('20150608192856'),
('20150608192919'),
('20150608192942'),
('20150608193037'),
('20150609183617'),
('20150609192718'),
('20150610131029'),
('20150610131451'),
('20150611152105'),
('20150618152320'),
('20150619163516'),
('20150622132210'),
('20150622161137'),
('20150630200823'),
('20150706143951'),
('20150706144127'),
('20150708180310'),
('20150708180334'),
('20150708180535'),
('20150708180556'),
('20150708180634'),
('20150708180656'),
('20150708180808'),
('20150708180829'),
('20150708181027'),
('20150708181056'),
('20150708195836'),
('20150708202634'),
('20150713135029'),
('20150714164144'),
('20150714185723'),
('20150714220631'),
('20150716151200'),
('20150716152353'),
('20150716175652'),
('20150720154700'),
('20150720160819'),
('20150720185154'),
('20150720204330'),
('20150720210144'),
('20150720214252'),
('20150720215812'),
('20150721134208'),
('20150721143105'),
('20150721152416'),
('20150721152522'),
('20150721152554'),
('20150721152635'),
('20150721175219'),
('20150721175435'),
('20150721175708'),
('20150721181118'),
('20150721183058'),
('20150721183235'),
('20150721185415'),
('20150721185531'),
('20150721185618'),
('20150721185648'),
('20150721200940'),
('20150721201012'),
('20150721201040'),
('20150721201130'),
('20150721201157'),
('20150722143141'),
('20150722143218'),
('20150722161734'),
('20150722162021'),
('20150722162052'),
('20150722162120'),
('20150722182358'),
('20150722182506'),
('20150722182534'),
('20150722182600'),
('20150722182630'),
('20150722183035'),
('20150722195123'),
('20150722203814'),
('20150722221549'),
('20150722221619'),
('20150722221700'),
('20150722221752'),
('20150722221828'),
('20150722221902'),
('20150722221950'),
('20150723162303'),
('20150723162507'),
('20150723162535'),
('20150723175601'),
('20150723175626'),
('20150723175702'),
('20150723175852'),
('20150723204727'),
('20150723204803'),
('20150723215350'),
('20150723215416'),
('20150723215445'),
('20150723215635'),
('20150723215703'),
('20150723215735'),
('20150723215803'),
('20150724160825'),
('20150724161424'),
('20150724183520'),
('20150724183642'),
('20150724183748'),
('20150724183851'),
('20150724185249'),
('20150724185317'),
('20150724190245'),
('20150724194416'),
('20150724204038'),
('20150724204110'),
('20150724204256'),
('20150724204438'),
('20150724204507'),
('20150724215331'),
('20150724220039'),
('20150727180506'),
('20150727180624'),
('20150727181020'),
('20150727181551'),
('20150727181639'),
('20150727181757'),
('20150727182229'),
('20150727183428'),
('20150727190031'),
('20150727190239'),
('20150727205625'),
('20150727205707'),
('20150727205732'),
('20150727205758'),
('20150727205825'),
('20150731150601'),
('20150804213316'),
('20150804220223'),
('20150805202635'),
('20150805205705'),
('20150805210127'),
('20150811212031'),
('20150811222821'),
('20150812132233'),
('20150814145036'),
('20150814202424'),
('20150825124355'),
('20150825162153'),
('20150825201709'),
('20150827192454'),
('20150828124153'),
('20150828130120'),
('20150831124949'),
('20150901172614'),
('20150901183443'),
('20150903151625'),
('20150903152506'),
('20150904190842'),
('20150908163509'),
('20150908165541'),
('20150908165852'),
('20150909193015'),
('20150910180045'),
('20150914123727'),
('20150916153757'),
('20150916162259'),
('20150921181623'),
('20150923203424'),
('20150924124208'),
('20150924212216'),
('20151001211058'),
('20151006151032'),
('20151006162807'),
('20151020205039'),
('20151022150943'),
('20151027202329'),
('20151028164723'),
('20151029154400'),
('20151029200926'),
('20151102184919'),
('20151102203508'),
('20151102210335'),
('20151103173218'),
('20151104162614'),
('20151105143647'),
('20151105154008'),
('20151109164009'),
('20151109173913'),
('20151109211519'),
('20151112213118'),
('20151116140649'),
('20151125203051'),
('20151130201300'),
('20151203211533'),
('20151203213154'),
('20151204193926'),
('20151205005239'),
('20151205010514'),
('20151206185159'),
('20151206214720'),
('20151207170907'),
('20151207201857'),
('20151208052259'),
('20151208163946'),
('20151208180136'),
('20151208194156'),
('20151209160256'),
('20151210173219'),
('20151210200206'),
('20151221213505'),
('20151222162032'),
('20151223165720'),
('20151230173435'),
('20151230220853'),
('20160105223019'),
('20160106202814'),
('20160106231611'),
('20160107000457'),
('20160107210432'),
('20160111161115'),
('20160111171917'),
('20160112192927'),
('20160113134916'),
('20160114230929'),
('20160115134715'),
('20160119170425'),
('20160119172834'),
('20160120202537'),
('20160125220837'),
('20160129223732'),
('20160129233721'),
('20160201184447'),
('20160201200548'),
('20160201211632'),
('20160208195003'),
('20160209223448'),
('20160212154312'),
('20160216190524'),
('20160217165725'),
('20160218134336'),
('20160225005426'),
('20160229191457'),
('20160229201317'),
('20160308171845'),
('20160308191150'),
('20160317152521'),
('20160317154811'),
('20160318165924'),
('20160330221050'),
('20160330223236'),
('20160405202205');


