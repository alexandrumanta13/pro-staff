import { HttpClient } from '@angular/common/http';
import { Injectable, PipeTransform } from '@angular/core';
import { Blog } from '../models/blog.model';

@Injectable({
    providedIn: 'root'
})
export class BlogService {

   

    private BLOGS = 'https://pro-staff.ro/prostaff-api/v1/blogs';
    private BLOG = 'https://pro-staff.ro/prostaff-api/v1/blog/';

    private BLOGS_CATEGORIES = 'https://pro-staff.ro/prostaff-api/v1/blogs/categories';
    private BLOGS_BY_CATEGORY = 'https://pro-staff.ro/prostaff-api/v1/blog/category/';
    private BLOGS_DATES = 'https://pro-staff.ro/prostaff-api/v1/dates-added';
    private BLOGS_BY_DATES = 'https://pro-staff.ro/prostaff-api/v1/get-by-date';
    private RECENT = 'https://pro-staff.ro/prostaff-api/v1/get-blog/recent';
    private SAME = 'https://pro-staff.ro/prostaff-api/v1/get-same-articles';


    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */

    constructor(private _httpClient: HttpClient) { }

    /**
     * Get blogs
     *
     * @returns {Promise<any>}
     */

    public getBlogs(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get blog
     *
     * @returns {Promise<any>}
     */

    public getBlog(postSlug): Promise<any> {
        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOG + postSlug)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get categories
     *
     * @returns {Promise<any>}
     */

    public getBlogsCategories(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS_CATEGORIES)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get by category
     *
     * @returns {Promise<any>}
     */

    public getBlogsByCategory(categorySlug): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS_BY_CATEGORY + categorySlug)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }


    /**
     * Get dates added
     *
     * @returns {Promise<any>}
     */

    public getBlogsDatesAdded(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS_DATES)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get by dates added
     *
     * @returns {Promise<any>}
     */

    public getBlogsByDatesAdded(month, year): Promise<any> {
      

        return new Promise((resolve, reject) => {
            this._httpClient.post<Blog[]>(this.BLOGS_BY_DATES, { 'month': month, 'year': year })
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }


    /**
     * Get recent
     *
     * @returns {Promise<any>}
     */

    public getRecent(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.RECENT)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get same articles
     *
     * @returns {Promise<any>}
     */

    public getSameArticles(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.SAME)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }


}
